package com.ultarischool.codet;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface codetMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table codet
     *
     * @mbg.generated Wed Jan 01 16:40:50 KST 2020
     */
    int countByExample(codetExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table codet
     *
     * @mbg.generated Wed Jan 01 16:40:50 KST 2020
     */
    int deleteByExample(codetExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table codet
     *
     * @mbg.generated Wed Jan 01 16:40:50 KST 2020
     */
    int deleteByPrimaryKey(Integer sn);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table codet
     *
     * @mbg.generated Wed Jan 01 16:40:50 KST 2020
     */
    int insert(codet record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table codet
     *
     * @mbg.generated Wed Jan 01 16:40:50 KST 2020
     */
    int insertSelective(codet record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table codet
     *
     * @mbg.generated Wed Jan 01 16:40:50 KST 2020
     */
    List<codet> selectByExample(codetExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table codet
     *
     * @mbg.generated Wed Jan 01 16:40:50 KST 2020
     */
    codet selectByPrimaryKey(Integer sn);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table codet
     *
     * @mbg.generated Wed Jan 01 16:40:50 KST 2020
     */
    int updateByExampleSelective(@Param("record") codet record, @Param("example") codetExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table codet
     *
     * @mbg.generated Wed Jan 01 16:40:50 KST 2020
     */
    int updateByExample(@Param("record") codet record, @Param("example") codetExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table codet
     *
     * @mbg.generated Wed Jan 01 16:40:50 KST 2020
     */
    int updateByPrimaryKeySelective(codet record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table codet
     *
     * @mbg.generated Wed Jan 01 16:40:50 KST 2020
     */
    int updateByPrimaryKey(codet record);
}