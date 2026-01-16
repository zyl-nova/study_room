-- MySQL版本（如果用SQL Server，语法稍作调整）
<<<<<<< HEAD
USE study_room; -- 先指定要操作的数据库
=======
>>>>>>> main
CREATE TABLE study_duration_ranking (
    student_id VARCHAR(9) NOT NULL COMMENT '学号（主键）',
    name VARCHAR(50) NOT NULL COMMENT '学生姓名',
    study_duration_min INT NOT NULL COMMENT '自习时长（分钟）',
    phone VARCHAR(11) NOT NULL COMMENT '手机号',
    class VARCHAR(50) NOT NULL COMMENT '班级',
    PRIMARY KEY (student_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自习时长排名表';

-- 插入测试数据（可选，方便测试）
INSERT INTO study_duration_ranking (student_id, name, study_duration_min, phone, class) VALUES
                                                                                            ('202500001', '张三', 120, '13800138000', '高三(1)班'),
                                                                                            ('202500002', '李四', 180, '13900139000', '高三(2)班');