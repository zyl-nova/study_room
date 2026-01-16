package com.service;

import com.baomidou.mybatisplus.service.IService;
import com.entity.StudyDurationRanking;
<<<<<<< HEAD

=======
>>>>>>> main
import java.util.List;
import java.util.Map;

/**
 * 自习时长排名Service接口
 * 修复点：
 * 1. 保留MP默认方法，新增自定义selectByStudentId
 * 2. 补充deleteById方法（支持学号修改的先删后加逻辑）
 */
public interface StudyDurationRankingService extends IService<StudyDurationRanking> {
    // 自定义排名列表查询
    List<Map<String, Object>> getRankingList();

    // 核心：自定义详情查询（替换MP的selectById，解决class_name报错）
    StudyDurationRanking selectByStudentId(String studentId);

    // 补充：支持单条删除（学号修改用）
    boolean deleteById(String studentId);
}