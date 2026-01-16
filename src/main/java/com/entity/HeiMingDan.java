package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
<<<<<<< HEAD
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

import java.util.Date;

@Data // 自动生成getter/setter（依赖Lombok）
@TableName("heimingdan") // 匹配数据库表名（必须和数据库表名一致）
=======
import com.baomidou.mybatisplus.annotations.TableField; // 新增：字段映射注解
import com.baomidou.mybatisplus.enums.IdType;
import java.util.Date;

/**
 * 黑名单实体类
 * 1. 补全数据库字段映射（适配下划线字段）
 * 2. 手动编写getter/setter，不依赖Lombok，解决编译报错
 */
@TableName("heimingdan") // 匹配数据库表名
>>>>>>> main
public class HeiMingDan {
    @TableId(type = IdType.AUTO) // MyBatis-Plus的主键注解
    private Long id; // 主键

<<<<<<< HEAD
    private String xuehao; // 学号（匹配数据库字段xuehao）
    private String xingming; // 姓名（匹配数据库字段xingming）
    private Integer totalWeiguiCount; // 累计违规次数（匹配total_weigui_count）
    private Integer weiguiChifanCount; // 乱吃乱喝次数（匹配weigui_chifan_count）
    private Integer weiguiWeiqiandaoCount; // 未签到次数（匹配weigui_weiqiandao_count）
    private Integer weiguiXuanhuaCount; // 大声喧哗次数（匹配weigui_xuanhua_count）
    private Integer weiguiSuibiaobianCount; // 随地大小便次数（匹配weigui_suibiaobian_count）
    private String otherWeiguiDesc; // 其他违规说明（匹配other_weigui_desc）
    private String heimingdanYuanyin; // 拉黑原因（匹配heimingdan_yuanyin）
    private Date heimingdanStartTime; // 拉黑开始时间（匹配heimingdan_start_time）
    private Date heimingdanEndTime; // 拉黑结束时间（匹配heimingdan_end_time）
    private Integer shifoujiechu; // 是否解除（匹配shifoujiechu）
=======
    private String xuehao; // 学号（数据库字段：xuehao，无需映射）
    private String xingming; // 姓名（数据库字段：xingming，无需映射）

    // 核心：补全下划线字段映射（MP 2.3无法自动驼峰转下划线）
    @TableField("total_weigui_count")
    private Integer totalWeiguiCount; // 累计违规次数

    @TableField("weigui_chifan_count")
    private Integer weiguiChifanCount; // 乱吃乱喝次数

    @TableField("weigui_weiqiandao_count")
    private Integer weiguiWeiqiandaoCount; // 未签到次数

    @TableField("weigui_xuanhua_count")
    private Integer weiguiXuanhuaCount; // 大声喧哗次数

    @TableField("weigui_suibiaobian_count")
    private Integer weiguiSuibiaobianCount; // 随地大小便次数

    @TableField("other_weigui_desc")
    private String otherWeiguiDesc; // 其他违规说明

    @TableField("heimingdan_yuanyin")
    private String heimingdanYuanyin; // 拉黑原因

    @TableField("heimingdan_start_time")
    private Date heimingdanStartTime; // 拉黑开始时间

    @TableField("heimingdan_end_time")
    private Date heimingdanEndTime; // 拉黑结束时间

    private Integer shifoujiechu; // 是否解除（数据库字段：shifoujiechu，无需映射）

    // ========== 手动编写所有setter方法（解决编译报错的核心） ==========
    public void setId(Long id) {
        this.id = id;
    }

    public void setXuehao(String xuehao) {
        this.xuehao = xuehao;
    }

    public void setXingming(String xingming) {
        this.xingming = xingming;
    }

    public void setTotalWeiguiCount(Integer totalWeiguiCount) {
        this.totalWeiguiCount = totalWeiguiCount;
    }

    public void setWeiguiChifanCount(Integer weiguiChifanCount) {
        this.weiguiChifanCount = weiguiChifanCount;
    }

    public void setWeiguiWeiqiandaoCount(Integer weiguiWeiqiandaoCount) {
        this.weiguiWeiqiandaoCount = weiguiWeiqiandaoCount;
    }

    public void setWeiguiXuanhuaCount(Integer weiguiXuanhuaCount) {
        this.weiguiXuanhuaCount = weiguiXuanhuaCount;
    }

    public void setWeiguiSuibiaobianCount(Integer weiguiSuibiaobianCount) {
        this.weiguiSuibiaobianCount = weiguiSuibiaobianCount;
    }

    public void setOtherWeiguiDesc(String otherWeiguiDesc) {
        this.otherWeiguiDesc = otherWeiguiDesc;
    }

    public void setHeimingdanYuanyin(String heimingdanYuanyin) {
        this.heimingdanYuanyin = heimingdanYuanyin;
    }

    public void setHeimingdanStartTime(Date heimingdanStartTime) {
        this.heimingdanStartTime = heimingdanStartTime;
    }

    // 重点：解决setHeimingdanEndTime()报错
    public void setHeimingdanEndTime(Date heimingdanEndTime) {
        this.heimingdanEndTime = heimingdanEndTime;
    }

    // 重点：解决setShifoujiechu()报错
    public void setShifoujiechu(Integer shifoujiechu) {
        this.shifoujiechu = shifoujiechu;
    }

    // ========== 手动编写所有getter方法（Service/Controller必须用） ==========
    public Long getId() {
        return id;
    }

    public String getXuehao() {
        return xuehao;
    }

    public String getXingming() {
        return xingming;
    }

    public Integer getTotalWeiguiCount() {
        return totalWeiguiCount;
    }

    public Integer getWeiguiChifanCount() {
        return weiguiChifanCount;
    }

    public Integer getWeiguiWeiqiandaoCount() {
        return weiguiWeiqiandaoCount;
    }

    public Integer getWeiguiXuanhuaCount() {
        return weiguiXuanhuaCount;
    }

    public Integer getWeiguiSuibiaobianCount() {
        return weiguiSuibiaobianCount;
    }

    public String getOtherWeiguiDesc() {
        return otherWeiguiDesc;
    }

    public String getHeimingdanYuanyin() {
        return heimingdanYuanyin;
    }

    public Date getHeimingdanStartTime() {
        return heimingdanStartTime;
    }

    public Date getHeimingdanEndTime() {
        return heimingdanEndTime;
    }

    public Integer getShifoujiechu() {
        return shifoujiechu;
    }
>>>>>>> main
}