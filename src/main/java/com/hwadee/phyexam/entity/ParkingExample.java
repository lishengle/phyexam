package com.hwadee.phyexam.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ParkingExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
     */
    public ParkingExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
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
     * This method corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
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

        public Criteria andParkingidIsNull() {
            addCriterion("parkingid is null");
            return (Criteria) this;
        }

        public Criteria andParkingidIsNotNull() {
            addCriterion("parkingid is not null");
            return (Criteria) this;
        }

        public Criteria andParkingidEqualTo(Integer value) {
            addCriterion("parkingid =", value, "parkingid");
            return (Criteria) this;
        }

        public Criteria andParkingidNotEqualTo(Integer value) {
            addCriterion("parkingid <>", value, "parkingid");
            return (Criteria) this;
        }

        public Criteria andParkingidGreaterThan(Integer value) {
            addCriterion("parkingid >", value, "parkingid");
            return (Criteria) this;
        }

        public Criteria andParkingidGreaterThanOrEqualTo(Integer value) {
            addCriterion("parkingid >=", value, "parkingid");
            return (Criteria) this;
        }

        public Criteria andParkingidLessThan(Integer value) {
            addCriterion("parkingid <", value, "parkingid");
            return (Criteria) this;
        }

        public Criteria andParkingidLessThanOrEqualTo(Integer value) {
            addCriterion("parkingid <=", value, "parkingid");
            return (Criteria) this;
        }

        public Criteria andParkingidIn(List<Integer> values) {
            addCriterion("parkingid in", values, "parkingid");
            return (Criteria) this;
        }

        public Criteria andParkingidNotIn(List<Integer> values) {
            addCriterion("parkingid not in", values, "parkingid");
            return (Criteria) this;
        }

        public Criteria andParkingidBetween(Integer value1, Integer value2) {
            addCriterion("parkingid between", value1, value2, "parkingid");
            return (Criteria) this;
        }

        public Criteria andParkingidNotBetween(Integer value1, Integer value2) {
            addCriterion("parkingid not between", value1, value2, "parkingid");
            return (Criteria) this;
        }

        public Criteria andParkingaddressIsNull() {
            addCriterion("parkingaddress is null");
            return (Criteria) this;
        }

        public Criteria andParkingaddressIsNotNull() {
            addCriterion("parkingaddress is not null");
            return (Criteria) this;
        }

        public Criteria andParkingaddressEqualTo(String value) {
            addCriterion("parkingaddress =", value, "parkingaddress");
            return (Criteria) this;
        }

        public Criteria andParkingaddressNotEqualTo(String value) {
            addCriterion("parkingaddress <>", value, "parkingaddress");
            return (Criteria) this;
        }

        public Criteria andParkingaddressGreaterThan(String value) {
            addCriterion("parkingaddress >", value, "parkingaddress");
            return (Criteria) this;
        }

        public Criteria andParkingaddressGreaterThanOrEqualTo(String value) {
            addCriterion("parkingaddress >=", value, "parkingaddress");
            return (Criteria) this;
        }

        public Criteria andParkingaddressLessThan(String value) {
            addCriterion("parkingaddress <", value, "parkingaddress");
            return (Criteria) this;
        }

        public Criteria andParkingaddressLessThanOrEqualTo(String value) {
            addCriterion("parkingaddress <=", value, "parkingaddress");
            return (Criteria) this;
        }

        public Criteria andParkingaddressLike(String value) {
            addCriterion("parkingaddress like", value, "parkingaddress");
            return (Criteria) this;
        }

        public Criteria andParkingaddressNotLike(String value) {
            addCriterion("parkingaddress not like", value, "parkingaddress");
            return (Criteria) this;
        }

        public Criteria andParkingaddressIn(List<String> values) {
            addCriterion("parkingaddress in", values, "parkingaddress");
            return (Criteria) this;
        }

        public Criteria andParkingaddressNotIn(List<String> values) {
            addCriterion("parkingaddress not in", values, "parkingaddress");
            return (Criteria) this;
        }

        public Criteria andParkingaddressBetween(String value1, String value2) {
            addCriterion("parkingaddress between", value1, value2, "parkingaddress");
            return (Criteria) this;
        }

        public Criteria andParkingaddressNotBetween(String value1, String value2) {
            addCriterion("parkingaddress not between", value1, value2, "parkingaddress");
            return (Criteria) this;
        }

        public Criteria andParkingstylenoIsNull() {
            addCriterion("parkingstyleno is null");
            return (Criteria) this;
        }

        public Criteria andParkingstylenoIsNotNull() {
            addCriterion("parkingstyleno is not null");
            return (Criteria) this;
        }

        public Criteria andParkingstylenoEqualTo(String value) {
            addCriterion("parkingstyleno =", value, "parkingstyleno");
            return (Criteria) this;
        }

        public Criteria andParkingstylenoNotEqualTo(String value) {
            addCriterion("parkingstyleno <>", value, "parkingstyleno");
            return (Criteria) this;
        }

        public Criteria andParkingstylenoGreaterThan(String value) {
            addCriterion("parkingstyleno >", value, "parkingstyleno");
            return (Criteria) this;
        }

        public Criteria andParkingstylenoGreaterThanOrEqualTo(String value) {
            addCriterion("parkingstyleno >=", value, "parkingstyleno");
            return (Criteria) this;
        }

        public Criteria andParkingstylenoLessThan(String value) {
            addCriterion("parkingstyleno <", value, "parkingstyleno");
            return (Criteria) this;
        }

        public Criteria andParkingstylenoLessThanOrEqualTo(String value) {
            addCriterion("parkingstyleno <=", value, "parkingstyleno");
            return (Criteria) this;
        }

        public Criteria andParkingstylenoLike(String value) {
            addCriterion("parkingstyleno like", value, "parkingstyleno");
            return (Criteria) this;
        }

        public Criteria andParkingstylenoNotLike(String value) {
            addCriterion("parkingstyleno not like", value, "parkingstyleno");
            return (Criteria) this;
        }

        public Criteria andParkingstylenoIn(List<String> values) {
            addCriterion("parkingstyleno in", values, "parkingstyleno");
            return (Criteria) this;
        }

        public Criteria andParkingstylenoNotIn(List<String> values) {
            addCriterion("parkingstyleno not in", values, "parkingstyleno");
            return (Criteria) this;
        }

        public Criteria andParkingstylenoBetween(String value1, String value2) {
            addCriterion("parkingstyleno between", value1, value2, "parkingstyleno");
            return (Criteria) this;
        }

        public Criteria andParkingstylenoNotBetween(String value1, String value2) {
            addCriterion("parkingstyleno not between", value1, value2, "parkingstyleno");
            return (Criteria) this;
        }

        public Criteria andBorrowdateIsNull() {
            addCriterion("borrowdate is null");
            return (Criteria) this;
        }

        public Criteria andBorrowdateIsNotNull() {
            addCriterion("borrowdate is not null");
            return (Criteria) this;
        }

        public Criteria andBorrowdateEqualTo(Date value) {
            addCriterion("borrowdate =", value, "borrowdate");
            return (Criteria) this;
        }

        public Criteria andBorrowdateNotEqualTo(Date value) {
            addCriterion("borrowdate <>", value, "borrowdate");
            return (Criteria) this;
        }

        public Criteria andBorrowdateGreaterThan(Date value) {
            addCriterion("borrowdate >", value, "borrowdate");
            return (Criteria) this;
        }

        public Criteria andBorrowdateGreaterThanOrEqualTo(Date value) {
            addCriterion("borrowdate >=", value, "borrowdate");
            return (Criteria) this;
        }

        public Criteria andBorrowdateLessThan(Date value) {
            addCriterion("borrowdate <", value, "borrowdate");
            return (Criteria) this;
        }

        public Criteria andBorrowdateLessThanOrEqualTo(Date value) {
            addCriterion("borrowdate <=", value, "borrowdate");
            return (Criteria) this;
        }

        public Criteria andBorrowdateIn(List<Date> values) {
            addCriterion("borrowdate in", values, "borrowdate");
            return (Criteria) this;
        }

        public Criteria andBorrowdateNotIn(List<Date> values) {
            addCriterion("borrowdate not in", values, "borrowdate");
            return (Criteria) this;
        }

        public Criteria andBorrowdateBetween(Date value1, Date value2) {
            addCriterion("borrowdate between", value1, value2, "borrowdate");
            return (Criteria) this;
        }

        public Criteria andBorrowdateNotBetween(Date value1, Date value2) {
            addCriterion("borrowdate not between", value1, value2, "borrowdate");
            return (Criteria) this;
        }

        public Criteria andReturndateIsNull() {
            addCriterion("returndate is null");
            return (Criteria) this;
        }

        public Criteria andReturndateIsNotNull() {
            addCriterion("returndate is not null");
            return (Criteria) this;
        }

        public Criteria andReturndateEqualTo(Date value) {
            addCriterion("returndate =", value, "returndate");
            return (Criteria) this;
        }

        public Criteria andReturndateNotEqualTo(Date value) {
            addCriterion("returndate <>", value, "returndate");
            return (Criteria) this;
        }

        public Criteria andReturndateGreaterThan(Date value) {
            addCriterion("returndate >", value, "returndate");
            return (Criteria) this;
        }

        public Criteria andReturndateGreaterThanOrEqualTo(Date value) {
            addCriterion("returndate >=", value, "returndate");
            return (Criteria) this;
        }

        public Criteria andReturndateLessThan(Date value) {
            addCriterion("returndate <", value, "returndate");
            return (Criteria) this;
        }

        public Criteria andReturndateLessThanOrEqualTo(Date value) {
            addCriterion("returndate <=", value, "returndate");
            return (Criteria) this;
        }

        public Criteria andReturndateIn(List<Date> values) {
            addCriterion("returndate in", values, "returndate");
            return (Criteria) this;
        }

        public Criteria andReturndateNotIn(List<Date> values) {
            addCriterion("returndate not in", values, "returndate");
            return (Criteria) this;
        }

        public Criteria andReturndateBetween(Date value1, Date value2) {
            addCriterion("returndate between", value1, value2, "returndate");
            return (Criteria) this;
        }

        public Criteria andReturndateNotBetween(Date value1, Date value2) {
            addCriterion("returndate not between", value1, value2, "returndate");
            return (Criteria) this;
        }

        public Criteria andIsborrowedIsNull() {
            addCriterion("isborrowed is null");
            return (Criteria) this;
        }

        public Criteria andIsborrowedIsNotNull() {
            addCriterion("isborrowed is not null");
            return (Criteria) this;
        }

        public Criteria andIsborrowedEqualTo(Integer value) {
            addCriterion("isborrowed =", value, "isborrowed");
            return (Criteria) this;
        }

        public Criteria andIsborrowedNotEqualTo(Integer value) {
            addCriterion("isborrowed <>", value, "isborrowed");
            return (Criteria) this;
        }

        public Criteria andIsborrowedGreaterThan(Integer value) {
            addCriterion("isborrowed >", value, "isborrowed");
            return (Criteria) this;
        }

        public Criteria andIsborrowedGreaterThanOrEqualTo(Integer value) {
            addCriterion("isborrowed >=", value, "isborrowed");
            return (Criteria) this;
        }

        public Criteria andIsborrowedLessThan(Integer value) {
            addCriterion("isborrowed <", value, "isborrowed");
            return (Criteria) this;
        }

        public Criteria andIsborrowedLessThanOrEqualTo(Integer value) {
            addCriterion("isborrowed <=", value, "isborrowed");
            return (Criteria) this;
        }

        public Criteria andIsborrowedIn(List<Integer> values) {
            addCriterion("isborrowed in", values, "isborrowed");
            return (Criteria) this;
        }

        public Criteria andIsborrowedNotIn(List<Integer> values) {
            addCriterion("isborrowed not in", values, "isborrowed");
            return (Criteria) this;
        }

        public Criteria andIsborrowedBetween(Integer value1, Integer value2) {
            addCriterion("isborrowed between", value1, value2, "isborrowed");
            return (Criteria) this;
        }

        public Criteria andIsborrowedNotBetween(Integer value1, Integer value2) {
            addCriterion("isborrowed not between", value1, value2, "isborrowed");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table parking
     *
     * @mbg.generated do_not_delete_during_merge Thu Mar 08 14:52:37 CST 2018
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table parking
     *
     * @mbg.generated Thu Mar 08 14:52:37 CST 2018
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