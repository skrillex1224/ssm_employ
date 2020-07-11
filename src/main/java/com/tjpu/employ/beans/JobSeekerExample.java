package com.tjpu.employ.beans;

import java.util.ArrayList;
import java.util.List;

public class JobSeekerExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public JobSeekerExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

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

        public Criteria andSeekerIdIsNull() {
            addCriterion("seeker_id is null");
            return (Criteria) this;
        }

        public Criteria andSeekerIdIsNotNull() {
            addCriterion("seeker_id is not null");
            return (Criteria) this;
        }

        public Criteria andSeekerIdEqualTo(Integer value) {
            addCriterion("seeker_id =", value, "seekerId");
            return (Criteria) this;
        }

        public Criteria andSeekerIdNotEqualTo(Integer value) {
            addCriterion("seeker_id <>", value, "seekerId");
            return (Criteria) this;
        }

        public Criteria andSeekerIdGreaterThan(Integer value) {
            addCriterion("seeker_id >", value, "seekerId");
            return (Criteria) this;
        }

        public Criteria andSeekerIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("seeker_id >=", value, "seekerId");
            return (Criteria) this;
        }

        public Criteria andSeekerIdLessThan(Integer value) {
            addCriterion("seeker_id <", value, "seekerId");
            return (Criteria) this;
        }

        public Criteria andSeekerIdLessThanOrEqualTo(Integer value) {
            addCriterion("seeker_id <=", value, "seekerId");
            return (Criteria) this;
        }

        public Criteria andSeekerIdIn(List<Integer> values) {
            addCriterion("seeker_id in", values, "seekerId");
            return (Criteria) this;
        }

        public Criteria andSeekerIdNotIn(List<Integer> values) {
            addCriterion("seeker_id not in", values, "seekerId");
            return (Criteria) this;
        }

        public Criteria andSeekerIdBetween(Integer value1, Integer value2) {
            addCriterion("seeker_id between", value1, value2, "seekerId");
            return (Criteria) this;
        }

        public Criteria andSeekerIdNotBetween(Integer value1, Integer value2) {
            addCriterion("seeker_id not between", value1, value2, "seekerId");
            return (Criteria) this;
        }

        public Criteria andSeekerNameIsNull() {
            addCriterion("seeker_name is null");
            return (Criteria) this;
        }

        public Criteria andSeekerNameIsNotNull() {
            addCriterion("seeker_name is not null");
            return (Criteria) this;
        }

        public Criteria andSeekerNameEqualTo(String value) {
            addCriterion("seeker_name =", value, "seekerName");
            return (Criteria) this;
        }

        public Criteria andSeekerNameNotEqualTo(String value) {
            addCriterion("seeker_name <>", value, "seekerName");
            return (Criteria) this;
        }

        public Criteria andSeekerNameGreaterThan(String value) {
            addCriterion("seeker_name >", value, "seekerName");
            return (Criteria) this;
        }

        public Criteria andSeekerNameGreaterThanOrEqualTo(String value) {
            addCriterion("seeker_name >=", value, "seekerName");
            return (Criteria) this;
        }

        public Criteria andSeekerNameLessThan(String value) {
            addCriterion("seeker_name <", value, "seekerName");
            return (Criteria) this;
        }

        public Criteria andSeekerNameLessThanOrEqualTo(String value) {
            addCriterion("seeker_name <=", value, "seekerName");
            return (Criteria) this;
        }

        public Criteria andSeekerNameLike(String value) {
            addCriterion("seeker_name like", value, "seekerName");
            return (Criteria) this;
        }

        public Criteria andSeekerNameNotLike(String value) {
            addCriterion("seeker_name not like", value, "seekerName");
            return (Criteria) this;
        }

        public Criteria andSeekerNameIn(List<String> values) {
            addCriterion("seeker_name in", values, "seekerName");
            return (Criteria) this;
        }

        public Criteria andSeekerNameNotIn(List<String> values) {
            addCriterion("seeker_name not in", values, "seekerName");
            return (Criteria) this;
        }

        public Criteria andSeekerNameBetween(String value1, String value2) {
            addCriterion("seeker_name between", value1, value2, "seekerName");
            return (Criteria) this;
        }

        public Criteria andSeekerNameNotBetween(String value1, String value2) {
            addCriterion("seeker_name not between", value1, value2, "seekerName");
            return (Criteria) this;
        }

        public Criteria andSeekerEmailIsNull() {
            addCriterion("seeker_email is null");
            return (Criteria) this;
        }

        public Criteria andSeekerEmailIsNotNull() {
            addCriterion("seeker_email is not null");
            return (Criteria) this;
        }

        public Criteria andSeekerEmailEqualTo(String value) {
            addCriterion("seeker_email =", value, "seekerEmail");
            return (Criteria) this;
        }

        public Criteria andSeekerEmailNotEqualTo(String value) {
            addCriterion("seeker_email <>", value, "seekerEmail");
            return (Criteria) this;
        }

        public Criteria andSeekerEmailGreaterThan(String value) {
            addCriterion("seeker_email >", value, "seekerEmail");
            return (Criteria) this;
        }

        public Criteria andSeekerEmailGreaterThanOrEqualTo(String value) {
            addCriterion("seeker_email >=", value, "seekerEmail");
            return (Criteria) this;
        }

        public Criteria andSeekerEmailLessThan(String value) {
            addCriterion("seeker_email <", value, "seekerEmail");
            return (Criteria) this;
        }

        public Criteria andSeekerEmailLessThanOrEqualTo(String value) {
            addCriterion("seeker_email <=", value, "seekerEmail");
            return (Criteria) this;
        }

        public Criteria andSeekerEmailLike(String value) {
            addCriterion("seeker_email like", value, "seekerEmail");
            return (Criteria) this;
        }

        public Criteria andSeekerEmailNotLike(String value) {
            addCriterion("seeker_email not like", value, "seekerEmail");
            return (Criteria) this;
        }

        public Criteria andSeekerEmailIn(List<String> values) {
            addCriterion("seeker_email in", values, "seekerEmail");
            return (Criteria) this;
        }

        public Criteria andSeekerEmailNotIn(List<String> values) {
            addCriterion("seeker_email not in", values, "seekerEmail");
            return (Criteria) this;
        }

        public Criteria andSeekerEmailBetween(String value1, String value2) {
            addCriterion("seeker_email between", value1, value2, "seekerEmail");
            return (Criteria) this;
        }

        public Criteria andSeekerEmailNotBetween(String value1, String value2) {
            addCriterion("seeker_email not between", value1, value2, "seekerEmail");
            return (Criteria) this;
        }

        public Criteria andSeekerPasswordIsNull() {
            addCriterion("seeker_password is null");
            return (Criteria) this;
        }

        public Criteria andSeekerPasswordIsNotNull() {
            addCriterion("seeker_password is not null");
            return (Criteria) this;
        }

        public Criteria andSeekerPasswordEqualTo(String value) {
            addCriterion("seeker_password =", value, "seekerPassword");
            return (Criteria) this;
        }

        public Criteria andSeekerPasswordNotEqualTo(String value) {
            addCriterion("seeker_password <>", value, "seekerPassword");
            return (Criteria) this;
        }

        public Criteria andSeekerPasswordGreaterThan(String value) {
            addCriterion("seeker_password >", value, "seekerPassword");
            return (Criteria) this;
        }

        public Criteria andSeekerPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("seeker_password >=", value, "seekerPassword");
            return (Criteria) this;
        }

        public Criteria andSeekerPasswordLessThan(String value) {
            addCriterion("seeker_password <", value, "seekerPassword");
            return (Criteria) this;
        }

        public Criteria andSeekerPasswordLessThanOrEqualTo(String value) {
            addCriterion("seeker_password <=", value, "seekerPassword");
            return (Criteria) this;
        }

        public Criteria andSeekerPasswordLike(String value) {
            addCriterion("seeker_password like", value, "seekerPassword");
            return (Criteria) this;
        }

        public Criteria andSeekerPasswordNotLike(String value) {
            addCriterion("seeker_password not like", value, "seekerPassword");
            return (Criteria) this;
        }

        public Criteria andSeekerPasswordIn(List<String> values) {
            addCriterion("seeker_password in", values, "seekerPassword");
            return (Criteria) this;
        }

        public Criteria andSeekerPasswordNotIn(List<String> values) {
            addCriterion("seeker_password not in", values, "seekerPassword");
            return (Criteria) this;
        }

        public Criteria andSeekerPasswordBetween(String value1, String value2) {
            addCriterion("seeker_password between", value1, value2, "seekerPassword");
            return (Criteria) this;
        }

        public Criteria andSeekerPasswordNotBetween(String value1, String value2) {
            addCriterion("seeker_password not between", value1, value2, "seekerPassword");
            return (Criteria) this;
        }

        public Criteria andSeekerAgeIsNull() {
            addCriterion("seeker_age is null");
            return (Criteria) this;
        }

        public Criteria andSeekerAgeIsNotNull() {
            addCriterion("seeker_age is not null");
            return (Criteria) this;
        }

        public Criteria andSeekerAgeEqualTo(Integer value) {
            addCriterion("seeker_age =", value, "seekerAge");
            return (Criteria) this;
        }

        public Criteria andSeekerAgeNotEqualTo(Integer value) {
            addCriterion("seeker_age <>", value, "seekerAge");
            return (Criteria) this;
        }

        public Criteria andSeekerAgeGreaterThan(Integer value) {
            addCriterion("seeker_age >", value, "seekerAge");
            return (Criteria) this;
        }

        public Criteria andSeekerAgeGreaterThanOrEqualTo(Integer value) {
            addCriterion("seeker_age >=", value, "seekerAge");
            return (Criteria) this;
        }

        public Criteria andSeekerAgeLessThan(Integer value) {
            addCriterion("seeker_age <", value, "seekerAge");
            return (Criteria) this;
        }

        public Criteria andSeekerAgeLessThanOrEqualTo(Integer value) {
            addCriterion("seeker_age <=", value, "seekerAge");
            return (Criteria) this;
        }

        public Criteria andSeekerAgeIn(List<Integer> values) {
            addCriterion("seeker_age in", values, "seekerAge");
            return (Criteria) this;
        }

        public Criteria andSeekerAgeNotIn(List<Integer> values) {
            addCriterion("seeker_age not in", values, "seekerAge");
            return (Criteria) this;
        }

        public Criteria andSeekerAgeBetween(Integer value1, Integer value2) {
            addCriterion("seeker_age between", value1, value2, "seekerAge");
            return (Criteria) this;
        }

        public Criteria andSeekerAgeNotBetween(Integer value1, Integer value2) {
            addCriterion("seeker_age not between", value1, value2, "seekerAge");
            return (Criteria) this;
        }

        public Criteria andSeekerYearsIsNull() {
            addCriterion("seeker_years is null");
            return (Criteria) this;
        }

        public Criteria andSeekerYearsIsNotNull() {
            addCriterion("seeker_years is not null");
            return (Criteria) this;
        }

        public Criteria andSeekerYearsEqualTo(Integer value) {
            addCriterion("seeker_years =", value, "seekerYears");
            return (Criteria) this;
        }

        public Criteria andSeekerYearsNotEqualTo(Integer value) {
            addCriterion("seeker_years <>", value, "seekerYears");
            return (Criteria) this;
        }

        public Criteria andSeekerYearsGreaterThan(Integer value) {
            addCriterion("seeker_years >", value, "seekerYears");
            return (Criteria) this;
        }

        public Criteria andSeekerYearsGreaterThanOrEqualTo(Integer value) {
            addCriterion("seeker_years >=", value, "seekerYears");
            return (Criteria) this;
        }

        public Criteria andSeekerYearsLessThan(Integer value) {
            addCriterion("seeker_years <", value, "seekerYears");
            return (Criteria) this;
        }

        public Criteria andSeekerYearsLessThanOrEqualTo(Integer value) {
            addCriterion("seeker_years <=", value, "seekerYears");
            return (Criteria) this;
        }

        public Criteria andSeekerYearsIn(List<Integer> values) {
            addCriterion("seeker_years in", values, "seekerYears");
            return (Criteria) this;
        }

        public Criteria andSeekerYearsNotIn(List<Integer> values) {
            addCriterion("seeker_years not in", values, "seekerYears");
            return (Criteria) this;
        }

        public Criteria andSeekerYearsBetween(Integer value1, Integer value2) {
            addCriterion("seeker_years between", value1, value2, "seekerYears");
            return (Criteria) this;
        }

        public Criteria andSeekerYearsNotBetween(Integer value1, Integer value2) {
            addCriterion("seeker_years not between", value1, value2, "seekerYears");
            return (Criteria) this;
        }

        public Criteria andSeekerEducIsNull() {
            addCriterion("seeker_educ is null");
            return (Criteria) this;
        }

        public Criteria andSeekerEducIsNotNull() {
            addCriterion("seeker_educ is not null");
            return (Criteria) this;
        }

        public Criteria andSeekerEducEqualTo(String value) {
            addCriterion("seeker_educ =", value, "seekerEduc");
            return (Criteria) this;
        }

        public Criteria andSeekerEducNotEqualTo(String value) {
            addCriterion("seeker_educ <>", value, "seekerEduc");
            return (Criteria) this;
        }

        public Criteria andSeekerEducGreaterThan(String value) {
            addCriterion("seeker_educ >", value, "seekerEduc");
            return (Criteria) this;
        }

        public Criteria andSeekerEducGreaterThanOrEqualTo(String value) {
            addCriterion("seeker_educ >=", value, "seekerEduc");
            return (Criteria) this;
        }

        public Criteria andSeekerEducLessThan(String value) {
            addCriterion("seeker_educ <", value, "seekerEduc");
            return (Criteria) this;
        }

        public Criteria andSeekerEducLessThanOrEqualTo(String value) {
            addCriterion("seeker_educ <=", value, "seekerEduc");
            return (Criteria) this;
        }

        public Criteria andSeekerEducLike(String value) {
            addCriterion("seeker_educ like", value, "seekerEduc");
            return (Criteria) this;
        }

        public Criteria andSeekerEducNotLike(String value) {
            addCriterion("seeker_educ not like", value, "seekerEduc");
            return (Criteria) this;
        }

        public Criteria andSeekerEducIn(List<String> values) {
            addCriterion("seeker_educ in", values, "seekerEduc");
            return (Criteria) this;
        }

        public Criteria andSeekerEducNotIn(List<String> values) {
            addCriterion("seeker_educ not in", values, "seekerEduc");
            return (Criteria) this;
        }

        public Criteria andSeekerEducBetween(String value1, String value2) {
            addCriterion("seeker_educ between", value1, value2, "seekerEduc");
            return (Criteria) this;
        }

        public Criteria andSeekerEducNotBetween(String value1, String value2) {
            addCriterion("seeker_educ not between", value1, value2, "seekerEduc");
            return (Criteria) this;
        }

        public Criteria andSeekerLanguageIsNull() {
            addCriterion("seeker_language is null");
            return (Criteria) this;
        }

        public Criteria andSeekerLanguageIsNotNull() {
            addCriterion("seeker_language is not null");
            return (Criteria) this;
        }

        public Criteria andSeekerLanguageEqualTo(String value) {
            addCriterion("seeker_language =", value, "seekerLanguage");
            return (Criteria) this;
        }

        public Criteria andSeekerLanguageNotEqualTo(String value) {
            addCriterion("seeker_language <>", value, "seekerLanguage");
            return (Criteria) this;
        }

        public Criteria andSeekerLanguageGreaterThan(String value) {
            addCriterion("seeker_language >", value, "seekerLanguage");
            return (Criteria) this;
        }

        public Criteria andSeekerLanguageGreaterThanOrEqualTo(String value) {
            addCriterion("seeker_language >=", value, "seekerLanguage");
            return (Criteria) this;
        }

        public Criteria andSeekerLanguageLessThan(String value) {
            addCriterion("seeker_language <", value, "seekerLanguage");
            return (Criteria) this;
        }

        public Criteria andSeekerLanguageLessThanOrEqualTo(String value) {
            addCriterion("seeker_language <=", value, "seekerLanguage");
            return (Criteria) this;
        }

        public Criteria andSeekerLanguageLike(String value) {
            addCriterion("seeker_language like", value, "seekerLanguage");
            return (Criteria) this;
        }

        public Criteria andSeekerLanguageNotLike(String value) {
            addCriterion("seeker_language not like", value, "seekerLanguage");
            return (Criteria) this;
        }

        public Criteria andSeekerLanguageIn(List<String> values) {
            addCriterion("seeker_language in", values, "seekerLanguage");
            return (Criteria) this;
        }

        public Criteria andSeekerLanguageNotIn(List<String> values) {
            addCriterion("seeker_language not in", values, "seekerLanguage");
            return (Criteria) this;
        }

        public Criteria andSeekerLanguageBetween(String value1, String value2) {
            addCriterion("seeker_language between", value1, value2, "seekerLanguage");
            return (Criteria) this;
        }

        public Criteria andSeekerLanguageNotBetween(String value1, String value2) {
            addCriterion("seeker_language not between", value1, value2, "seekerLanguage");
            return (Criteria) this;
        }

        public Criteria andSeekerGenderIsNull() {
            addCriterion("seeker_gender is null");
            return (Criteria) this;
        }

        public Criteria andSeekerGenderIsNotNull() {
            addCriterion("seeker_gender is not null");
            return (Criteria) this;
        }

        public Criteria andSeekerGenderEqualTo(Byte value) {
            addCriterion("seeker_gender =", value, "seekerGender");
            return (Criteria) this;
        }

        public Criteria andSeekerGenderNotEqualTo(Byte value) {
            addCriterion("seeker_gender <>", value, "seekerGender");
            return (Criteria) this;
        }

        public Criteria andSeekerGenderGreaterThan(Byte value) {
            addCriterion("seeker_gender >", value, "seekerGender");
            return (Criteria) this;
        }

        public Criteria andSeekerGenderGreaterThanOrEqualTo(Byte value) {
            addCriterion("seeker_gender >=", value, "seekerGender");
            return (Criteria) this;
        }

        public Criteria andSeekerGenderLessThan(Byte value) {
            addCriterion("seeker_gender <", value, "seekerGender");
            return (Criteria) this;
        }

        public Criteria andSeekerGenderLessThanOrEqualTo(Byte value) {
            addCriterion("seeker_gender <=", value, "seekerGender");
            return (Criteria) this;
        }

        public Criteria andSeekerGenderIn(List<Byte> values) {
            addCriterion("seeker_gender in", values, "seekerGender");
            return (Criteria) this;
        }

        public Criteria andSeekerGenderNotIn(List<Byte> values) {
            addCriterion("seeker_gender not in", values, "seekerGender");
            return (Criteria) this;
        }

        public Criteria andSeekerGenderBetween(Byte value1, Byte value2) {
            addCriterion("seeker_gender between", value1, value2, "seekerGender");
            return (Criteria) this;
        }

        public Criteria andSeekerGenderNotBetween(Byte value1, Byte value2) {
            addCriterion("seeker_gender not between", value1, value2, "seekerGender");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

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