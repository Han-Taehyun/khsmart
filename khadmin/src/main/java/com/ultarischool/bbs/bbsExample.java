package com.ultarischool.bbs;

import java.util.ArrayList;
import java.util.List;

import edumgt.common.util.PageVO;

public class bbsExample extends  PageVO{
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    public bbsExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andSnIsNull() {
            addCriterion("sn is null");
            return (Criteria) this;
        }

        public Criteria andSnIsNotNull() {
            addCriterion("sn is not null");
            return (Criteria) this;
        }

        public Criteria andSnEqualTo(Integer value) {
            addCriterion("sn =", value, "sn");
            return (Criteria) this;
        }

        public Criteria andSnNotEqualTo(Integer value) {
            addCriterion("sn <>", value, "sn");
            return (Criteria) this;
        }

        public Criteria andSnGreaterThan(Integer value) {
            addCriterion("sn >", value, "sn");
            return (Criteria) this;
        }

        public Criteria andSnGreaterThanOrEqualTo(Integer value) {
            addCriterion("sn >=", value, "sn");
            return (Criteria) this;
        }

        public Criteria andSnLessThan(Integer value) {
            addCriterion("sn <", value, "sn");
            return (Criteria) this;
        }

        public Criteria andSnLessThanOrEqualTo(Integer value) {
            addCriterion("sn <=", value, "sn");
            return (Criteria) this;
        }

        public Criteria andSnIn(List<Integer> values) {
            addCriterion("sn in", values, "sn");
            return (Criteria) this;
        }

        public Criteria andSnNotIn(List<Integer> values) {
            addCriterion("sn not in", values, "sn");
            return (Criteria) this;
        }

        public Criteria andSnBetween(Integer value1, Integer value2) {
            addCriterion("sn between", value1, value2, "sn");
            return (Criteria) this;
        }

        public Criteria andSnNotBetween(Integer value1, Integer value2) {
            addCriterion("sn not between", value1, value2, "sn");
            return (Criteria) this;
        }

        public Criteria andUseridIsNull() {
            addCriterion("userid is null");
            return (Criteria) this;
        }

        public Criteria andUseridIsNotNull() {
            addCriterion("userid is not null");
            return (Criteria) this;
        }

        public Criteria andUseridEqualTo(String value) {
            addCriterion("userid =", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotEqualTo(String value) {
            addCriterion("userid <>", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThan(String value) {
            addCriterion("userid >", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThanOrEqualTo(String value) {
            addCriterion("userid >=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThan(String value) {
            addCriterion("userid <", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThanOrEqualTo(String value) {
            addCriterion("userid <=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLike(String value) {
            addCriterion("userid like", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotLike(String value) {
            addCriterion("userid not like", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridIn(List<String> values) {
            addCriterion("userid in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotIn(List<String> values) {
            addCriterion("userid not in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridBetween(String value1, String value2) {
            addCriterion("userid between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotBetween(String value1, String value2) {
            addCriterion("userid not between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andBbstypeIsNull() {
            addCriterion("bbstype is null");
            return (Criteria) this;
        }

        public Criteria andBbstypeIsNotNull() {
            addCriterion("bbstype is not null");
            return (Criteria) this;
        }

        public Criteria andBbstypeEqualTo(String value) {
            addCriterion("bbstype =", value, "bbstype");
            return (Criteria) this;
        }

        public Criteria andBbstypeNotEqualTo(String value) {
            addCriterion("bbstype <>", value, "bbstype");
            return (Criteria) this;
        }

        public Criteria andBbstypeGreaterThan(String value) {
            addCriterion("bbstype >", value, "bbstype");
            return (Criteria) this;
        }

        public Criteria andBbstypeGreaterThanOrEqualTo(String value) {
            addCriterion("bbstype >=", value, "bbstype");
            return (Criteria) this;
        }

        public Criteria andBbstypeLessThan(String value) {
            addCriterion("bbstype <", value, "bbstype");
            return (Criteria) this;
        }

        public Criteria andBbstypeLessThanOrEqualTo(String value) {
            addCriterion("bbstype <=", value, "bbstype");
            return (Criteria) this;
        }

        public Criteria andBbstypeLike(String value) {
            addCriterion("bbstype like", value, "bbstype");
            return (Criteria) this;
        }

        public Criteria andBbstypeNotLike(String value) {
            addCriterion("bbstype not like", value, "bbstype");
            return (Criteria) this;
        }

        public Criteria andBbstypeIn(List<String> values) {
            addCriterion("bbstype in", values, "bbstype");
            return (Criteria) this;
        }

        public Criteria andBbstypeNotIn(List<String> values) {
            addCriterion("bbstype not in", values, "bbstype");
            return (Criteria) this;
        }

        public Criteria andBbstypeBetween(String value1, String value2) {
            addCriterion("bbstype between", value1, value2, "bbstype");
            return (Criteria) this;
        }

        public Criteria andBbstypeNotBetween(String value1, String value2) {
            addCriterion("bbstype not between", value1, value2, "bbstype");
            return (Criteria) this;
        }

        public Criteria andTitleIsNull() {
            addCriterion("title is null");
            return (Criteria) this;
        }

        public Criteria andTitleIsNotNull() {
            addCriterion("title is not null");
            return (Criteria) this;
        }

        public Criteria andTitleEqualTo(String value) {
            addCriterion("title =", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotEqualTo(String value) {
            addCriterion("title <>", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThan(String value) {
            addCriterion("title >", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThanOrEqualTo(String value) {
            addCriterion("title >=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThan(String value) {
            addCriterion("title <", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThanOrEqualTo(String value) {
            addCriterion("title <=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLike(String value) {
            addCriterion("title like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotLike(String value) {
            addCriterion("title not like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleIn(List<String> values) {
            addCriterion("title in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotIn(List<String> values) {
            addCriterion("title not in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleBetween(String value1, String value2) {
            addCriterion("title between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotBetween(String value1, String value2) {
            addCriterion("title not between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andMemo1IsNull() {
            addCriterion("memo1 is null");
            return (Criteria) this;
        }

        public Criteria andMemo1IsNotNull() {
            addCriterion("memo1 is not null");
            return (Criteria) this;
        }

        public Criteria andMemo1EqualTo(String value) {
            addCriterion("memo1 =", value, "memo1");
            return (Criteria) this;
        }

        public Criteria andMemo1NotEqualTo(String value) {
            addCriterion("memo1 <>", value, "memo1");
            return (Criteria) this;
        }

        public Criteria andMemo1GreaterThan(String value) {
            addCriterion("memo1 >", value, "memo1");
            return (Criteria) this;
        }

        public Criteria andMemo1GreaterThanOrEqualTo(String value) {
            addCriterion("memo1 >=", value, "memo1");
            return (Criteria) this;
        }

        public Criteria andMemo1LessThan(String value) {
            addCriterion("memo1 <", value, "memo1");
            return (Criteria) this;
        }

        public Criteria andMemo1LessThanOrEqualTo(String value) {
            addCriterion("memo1 <=", value, "memo1");
            return (Criteria) this;
        }

        public Criteria andMemo1Like(String value) {
            addCriterion("memo1 like", value, "memo1");
            return (Criteria) this;
        }

        public Criteria andMemo1NotLike(String value) {
            addCriterion("memo1 not like", value, "memo1");
            return (Criteria) this;
        }

        public Criteria andMemo1In(List<String> values) {
            addCriterion("memo1 in", values, "memo1");
            return (Criteria) this;
        }

        public Criteria andMemo1NotIn(List<String> values) {
            addCriterion("memo1 not in", values, "memo1");
            return (Criteria) this;
        }

        public Criteria andMemo1Between(String value1, String value2) {
            addCriterion("memo1 between", value1, value2, "memo1");
            return (Criteria) this;
        }

        public Criteria andMemo1NotBetween(String value1, String value2) {
            addCriterion("memo1 not between", value1, value2, "memo1");
            return (Criteria) this;
        }

        public Criteria andCntIsNull() {
            addCriterion("cnt is null");
            return (Criteria) this;
        }

        public Criteria andCntIsNotNull() {
            addCriterion("cnt is not null");
            return (Criteria) this;
        }

        public Criteria andCntEqualTo(Integer value) {
            addCriterion("cnt =", value, "cnt");
            return (Criteria) this;
        }

        public Criteria andCntNotEqualTo(Integer value) {
            addCriterion("cnt <>", value, "cnt");
            return (Criteria) this;
        }

        public Criteria andCntGreaterThan(Integer value) {
            addCriterion("cnt >", value, "cnt");
            return (Criteria) this;
        }

        public Criteria andCntGreaterThanOrEqualTo(Integer value) {
            addCriterion("cnt >=", value, "cnt");
            return (Criteria) this;
        }

        public Criteria andCntLessThan(Integer value) {
            addCriterion("cnt <", value, "cnt");
            return (Criteria) this;
        }

        public Criteria andCntLessThanOrEqualTo(Integer value) {
            addCriterion("cnt <=", value, "cnt");
            return (Criteria) this;
        }

        public Criteria andCntIn(List<Integer> values) {
            addCriterion("cnt in", values, "cnt");
            return (Criteria) this;
        }

        public Criteria andCntNotIn(List<Integer> values) {
            addCriterion("cnt not in", values, "cnt");
            return (Criteria) this;
        }

        public Criteria andCntBetween(Integer value1, Integer value2) {
            addCriterion("cnt between", value1, value2, "cnt");
            return (Criteria) this;
        }

        public Criteria andCntNotBetween(Integer value1, Integer value2) {
            addCriterion("cnt not between", value1, value2, "cnt");
            return (Criteria) this;
        }

        public Criteria andAfile1IsNull() {
            addCriterion("afile1 is null");
            return (Criteria) this;
        }

        public Criteria andAfile1IsNotNull() {
            addCriterion("afile1 is not null");
            return (Criteria) this;
        }

        public Criteria andAfile1EqualTo(String value) {
            addCriterion("afile1 =", value, "afile1");
            return (Criteria) this;
        }

        public Criteria andAfile1NotEqualTo(String value) {
            addCriterion("afile1 <>", value, "afile1");
            return (Criteria) this;
        }

        public Criteria andAfile1GreaterThan(String value) {
            addCriterion("afile1 >", value, "afile1");
            return (Criteria) this;
        }

        public Criteria andAfile1GreaterThanOrEqualTo(String value) {
            addCriterion("afile1 >=", value, "afile1");
            return (Criteria) this;
        }

        public Criteria andAfile1LessThan(String value) {
            addCriterion("afile1 <", value, "afile1");
            return (Criteria) this;
        }

        public Criteria andAfile1LessThanOrEqualTo(String value) {
            addCriterion("afile1 <=", value, "afile1");
            return (Criteria) this;
        }

        public Criteria andAfile1Like(String value) {
            addCriterion("afile1 like", value, "afile1");
            return (Criteria) this;
        }

        public Criteria andAfile1NotLike(String value) {
            addCriterion("afile1 not like", value, "afile1");
            return (Criteria) this;
        }

        public Criteria andAfile1In(List<String> values) {
            addCriterion("afile1 in", values, "afile1");
            return (Criteria) this;
        }

        public Criteria andAfile1NotIn(List<String> values) {
            addCriterion("afile1 not in", values, "afile1");
            return (Criteria) this;
        }

        public Criteria andAfile1Between(String value1, String value2) {
            addCriterion("afile1 between", value1, value2, "afile1");
            return (Criteria) this;
        }

        public Criteria andAfile1NotBetween(String value1, String value2) {
            addCriterion("afile1 not between", value1, value2, "afile1");
            return (Criteria) this;
        }

        public Criteria andAfile2IsNull() {
            addCriterion("afile2 is null");
            return (Criteria) this;
        }

        public Criteria andAfile2IsNotNull() {
            addCriterion("afile2 is not null");
            return (Criteria) this;
        }

        public Criteria andAfile2EqualTo(String value) {
            addCriterion("afile2 =", value, "afile2");
            return (Criteria) this;
        }

        public Criteria andAfile2NotEqualTo(String value) {
            addCriterion("afile2 <>", value, "afile2");
            return (Criteria) this;
        }

        public Criteria andAfile2GreaterThan(String value) {
            addCriterion("afile2 >", value, "afile2");
            return (Criteria) this;
        }

        public Criteria andAfile2GreaterThanOrEqualTo(String value) {
            addCriterion("afile2 >=", value, "afile2");
            return (Criteria) this;
        }

        public Criteria andAfile2LessThan(String value) {
            addCriterion("afile2 <", value, "afile2");
            return (Criteria) this;
        }

        public Criteria andAfile2LessThanOrEqualTo(String value) {
            addCriterion("afile2 <=", value, "afile2");
            return (Criteria) this;
        }

        public Criteria andAfile2Like(String value) {
            addCriterion("afile2 like", value, "afile2");
            return (Criteria) this;
        }

        public Criteria andAfile2NotLike(String value) {
            addCriterion("afile2 not like", value, "afile2");
            return (Criteria) this;
        }

        public Criteria andAfile2In(List<String> values) {
            addCriterion("afile2 in", values, "afile2");
            return (Criteria) this;
        }

        public Criteria andAfile2NotIn(List<String> values) {
            addCriterion("afile2 not in", values, "afile2");
            return (Criteria) this;
        }

        public Criteria andAfile2Between(String value1, String value2) {
            addCriterion("afile2 between", value1, value2, "afile2");
            return (Criteria) this;
        }

        public Criteria andAfile2NotBetween(String value1, String value2) {
            addCriterion("afile2 not between", value1, value2, "afile2");
            return (Criteria) this;
        }

        public Criteria andWdateIsNull() {
            addCriterion("wdate is null");
            return (Criteria) this;
        }

        public Criteria andWdateIsNotNull() {
            addCriterion("wdate is not null");
            return (Criteria) this;
        }

        public Criteria andWdateEqualTo(String value) {
            addCriterion("wdate =", value, "wdate");
            return (Criteria) this;
        }

        public Criteria andWdateNotEqualTo(String value) {
            addCriterion("wdate <>", value, "wdate");
            return (Criteria) this;
        }

        public Criteria andWdateGreaterThan(String value) {
            addCriterion("wdate >", value, "wdate");
            return (Criteria) this;
        }

        public Criteria andWdateGreaterThanOrEqualTo(String value) {
            addCriterion("wdate >=", value, "wdate");
            return (Criteria) this;
        }

        public Criteria andWdateLessThan(String value) {
            addCriterion("wdate <", value, "wdate");
            return (Criteria) this;
        }

        public Criteria andWdateLessThanOrEqualTo(String value) {
            addCriterion("wdate <=", value, "wdate");
            return (Criteria) this;
        }

        public Criteria andWdateLike(String value) {
            addCriterion("wdate like", value, "wdate");
            return (Criteria) this;
        }

        public Criteria andWdateNotLike(String value) {
            addCriterion("wdate not like", value, "wdate");
            return (Criteria) this;
        }

        public Criteria andWdateIn(List<String> values) {
            addCriterion("wdate in", values, "wdate");
            return (Criteria) this;
        }

        public Criteria andWdateNotIn(List<String> values) {
            addCriterion("wdate not in", values, "wdate");
            return (Criteria) this;
        }

        public Criteria andWdateBetween(String value1, String value2) {
            addCriterion("wdate between", value1, value2, "wdate");
            return (Criteria) this;
        }

        public Criteria andWdateNotBetween(String value1, String value2) {
            addCriterion("wdate not between", value1, value2, "wdate");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table bbs
     *
     * @mbg.generated do_not_delete_during_merge Tue Dec 17 11:09:48 KST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table bbs
     *
     * @mbg.generated Tue Dec 17 11:09:48 KST 2019
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}