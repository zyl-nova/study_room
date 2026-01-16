package com.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.entity.StudyDurationRanking;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
<<<<<<< HEAD

=======
>>>>>>> main
import java.util.List;
import java.util.Map;

@Mapper
public interface StudyDurationRankingDao extends BaseMapper<StudyDurationRanking> {

    @Select("SELECT " +
            "RANK() OVER (ORDER BY study_duration_min DESC) AS ranking, " +
            "name, " +
            "student_id AS student_id, " +
            "study_duration_min AS study_duration_min, " +
            "phone, " +
            "class AS className " +  // 仅用class，无class_name
            "FROM study_duration_ranking " +
            "ORDER BY study_duration_min DESC, student_id ASC")
    List<Map<String, Object>> selectRankingList();

    @Select("SELECT " +
            "student_id AS student_id, " +
            "name, " +
            "study_duration_min AS study_duration_min, " +
            "phone, " +
            "class AS className " +  // 仅用class，无class_name
            "FROM study_duration_ranking " +
            "WHERE student_id = #{studentId}")
    StudyDurationRanking selectByStudentId(String studentId);
}