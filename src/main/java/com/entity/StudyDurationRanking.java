package com.entity;

// 替换为MP 2.3的注解包路径
<<<<<<< HEAD

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Positive;

/**
 * 自习时长排名实体类
 */
@Data
=======
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField; // 新增：表字段映射注解
import com.baomidou.mybatisplus.enums.IdType;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Pattern;

/**
 * 自习时长排名实体类
 * 完全手动编写getter/setter，不依赖Lombok，解决编译报错
 */
>>>>>>> main
@TableName("study_duration_ranking") // MP 2.3的TableName注解
public class StudyDurationRanking {
    /** 学号（主键） */
    @TableId(type = IdType.INPUT) // MP 2.3的TableId注解
<<<<<<< HEAD
=======
    @TableField("student_id") // 核心：补全数据库字段映射（必须加！）
>>>>>>> main
    @NotBlank(message = "学号不能为空")
    @Pattern(regexp = "^[0-9]{9}$", message = "学号必须是9位数字")
    private String studentId;

    /** 学生姓名 */
    @NotBlank(message = "姓名不能为空")
    private String name;

    /** 自习时长（总分钟数） */
    @TableField("study_duration_min") // 核心：映射数据库字段名
    @Positive(message = "自习时长必须大于0")
    private Integer studyDurationMin;

    /** 手机号 */
    @NotBlank(message = "手机号不能为空")
    @Pattern(regexp = "^[0-9]{11}$", message = "手机号必须是11位数字")
    private String phone;

    /** 班级 */
    @TableField("class") // 核心：映射数据库class字段到className属性
    @NotBlank(message = "班级不能为空")
    private String className;
<<<<<<< HEAD
=======

    // ========== 手动编写所有setter方法（解决编译报错的核心） ==========
    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setStudyDurationMin(Integer studyDurationMin) {
        this.studyDurationMin = studyDurationMin;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    // ========== 手动编写所有getter方法（Service层必须用） ==========
    public String getStudentId() {
        return studentId;
    }

    public String getName() {
        return name;
    }

    public Integer getStudyDurationMin() {
        return studyDurationMin;
    }

    public String getPhone() {
        return phone;
    }

    public String getClassName() {
        return className;
    }
>>>>>>> main
}