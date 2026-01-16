package com.controller;

import com.entity.StudyDurationRanking;
import com.service.StudyDurationRankingService;
import com.utils.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

<<<<<<< HEAD
=======
import javax.validation.Valid;
>>>>>>> main
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 自习时长排名Controller
 * 修正点：
 * 1. 优化update接口逻辑，支持新旧学号修改
 * 2. 适配前端传递的oldStudentId参数
 * 3. 增强参数校验和异常处理
 */
@RestController
@RequestMapping("/ranking")
@Validated
public class RankingController {

    @Autowired
    private StudyDurationRankingService studyDurationRankingService;

    /**
     * 查询排名列表
     */
    @GetMapping("/list")
    public R list() {
        try {
            List<Map<String, Object>> list = studyDurationRankingService.getRankingList();
            return R.ok().put("data", list);
        } catch (Exception e) {
            return R.error("查询失败：" + e.getMessage());
        }
    }

    /**
     * 新增记录
     */
    @PostMapping("/save")
    public R save(@RequestBody Map<String, Object> paramMap) {
        try {
            // 解析前端参数
            String studentId = paramMap.get("student_id").toString().trim();
            String name = paramMap.get("name").toString().trim();
            Integer studyDurationMin = Integer.parseInt(paramMap.get("study_duration_min").toString());
            String phone = paramMap.get("phone").toString().trim();
            String className = paramMap.get("className").toString().trim();

            // 校验学号是否存在
            if (studyDurationRankingService.selectByStudentId(studentId) != null) {
                return R.error("新增失败：该学号已存在");
            }

            // 封装实体类
            StudyDurationRanking ranking = new StudyDurationRanking();
            ranking.setStudentId(studentId);
            ranking.setName(name);
            ranking.setStudyDurationMin(studyDurationMin);
            ranking.setPhone(phone);
            ranking.setClassName(className);

            boolean flag = studyDurationRankingService.insert(ranking);
            return flag ? R.ok("新增成功") : R.error("新增失败");
        } catch (Exception e) {
            return R.error("新增失败：" + e.getMessage());
        }
    }

    /**
     * 修改记录（支持学号修改）
     */
    @PostMapping("/update")
    public R update(@RequestBody Map<String, Object> paramMap) {
        try {
            // 解析前端参数（包含旧学号）
            String oldStudentId = paramMap.get("oldStudentId").toString().trim();
            String newStudentId = paramMap.get("student_id").toString().trim();
            String name = paramMap.get("name").toString().trim();
            Integer studyDurationMin = Integer.parseInt(paramMap.get("study_duration_min").toString());
            String phone = paramMap.get("phone").toString().trim();
            String className = paramMap.get("className").toString().trim();

            // 1. 校验旧学号是否存在
            StudyDurationRanking oldRanking = studyDurationRankingService.selectByStudentId(oldStudentId);
            if (oldRanking == null) {
                return R.error("修改失败：原学生记录不存在");
            }

            // 2. 校验新学号是否已被占用（非自身）
            if (!newStudentId.equals(oldStudentId)
                    && studyDurationRankingService.selectByStudentId(newStudentId) != null) {
                return R.error("修改失败：新学号已存在");
            }

            // 3. 删除旧数据
            boolean deleteFlag = studyDurationRankingService.deleteById(oldStudentId);
            if (!deleteFlag) {
                return R.error("修改失败：删除旧记录失败");
            }

            // 4. 插入新数据
            StudyDurationRanking newRanking = new StudyDurationRanking();
            newRanking.setStudentId(newStudentId);
            newRanking.setName(name);
            newRanking.setStudyDurationMin(studyDurationMin);
            newRanking.setPhone(phone);
            newRanking.setClassName(className);

            boolean insertFlag = studyDurationRankingService.insert(newRanking);
            if (!insertFlag) {
                // 回滚：插入失败恢复旧数据
                studyDurationRankingService.insert(oldRanking);
                return R.error("修改失败：新增新记录失败");
            }

            return R.ok("修改成功");
        } catch (NumberFormatException e) {
            return R.error("修改失败：自习时长必须为数字");
        } catch (Exception e) {
            return R.error("修改失败：" + e.getMessage());
        }
    }

    /**
     * 批量删除
     */
    @PostMapping("/delete")
    public R delete(@RequestBody String[] studentIds) {
        try {
            List<String> ids = new ArrayList<>();
            for (String id : studentIds) {
                ids.add(id.trim());
            }
            boolean flag = studyDurationRankingService.deleteBatchIds(ids);
            return flag ? R.ok("删除成功") : R.error("删除失败");
        } catch (Exception e) {
            return R.error("删除失败：" + e.getMessage());
        }
    }

    /**
     * 查询详情
     */
    @GetMapping("/info/{studentId}")
    public R info(@PathVariable String studentId) {
        try {
            StudyDurationRanking ranking = studyDurationRankingService.selectByStudentId(studentId);
            if (ranking == null) {
                return R.error("查询失败：该学生不存在");
            }
            return R.ok().put("data", ranking);
        } catch (Exception e) {
            return R.error("查询失败：" + e.getMessage());
        }
    }
}