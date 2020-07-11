package com.tjpu.employ.beans;

import java.util.ArrayList;
import java.util.List;

public class HireInfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public HireInfoExample() {
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

        public Criteria andHireIdIsNull() {
            addCriterion("hire_id is null");
            return (Criteria) this;
        }

        public Criteria andHireIdIsNotNull() {
            addCriterion("hire_id is not null");
            return (Criteria) this;
        }

        public Criteria andHireIdEqualTo(Integer value) {
            addCriterion("hire_id =", value, "hireId");
            return (Criteria) this;
        }

        public Criteria andHireIdNotEqualTo(Integer value) {
            addCriterion("hire_id <>", value, "hireId");
            return (Criteria) this;
        }

        public Criteria andHireIdGreaterThan(Integer value) {
            addCriterion("hire_id >", value, "hireId");
            return (Criteria) this;
        }

        public Criteria andHireIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("hire_id >=", value, "hireId");
            return (Criteria) this;
        }

        public Criteria andHireIdLessThan(Integer value) {
            addCriterion("hire_id <", value, "hireId");
            return (Criteria) this;
        }

        public Criteria andHireIdLessThanOrEqualTo(Integer value) {
            addCriterion("hire_id <=", value, "hireId");
            return (Criteria) this;
        }

        public Criteria andHireIdIn(List<Integer> values) {
            addCriterion("hire_id in", values, "hireId");
            return (Criteria) this;
        }

        public Criteria andHireIdNotIn(List<Integer> values) {
            addCriterion("hire_id not in", values, "hireId");
            return (Criteria) this;
        }

        public Criteria andHireIdBetween(Integer value1, Integer value2) {
            addCriterion("hire_id between", value1, value2, "hireId");
            return (Criteria) this;
        }

        public Criteria andHireIdNotBetween(Integer value1, Integer value2) {
            addCriterion("hire_id not between", value1, value2, "hireId");
            return (Criteria) this;
        }

        public Criteria andHireSalaryIsNull() {
            addCriterion("hire_salary is null");
            return (Criteria) this;
        }

        public Criteria andHireSalaryIsNotNull() {
            addCriterion("hire_salary is not null");
            return (Criteria) this;
        }

        public Criteria andHireSalaryEqualTo(Long value) {
            addCriterion("hire_salary =", value, "hireSalary");
            return (Criteria) this;
        }

        public Criteria andHireSalaryNotEqualTo(Long value) {
            addCriterion("hire_salary <>", value, "hireSalary");
            return (Criteria) this;
        }

        public Criteria andHireSalaryGreaterThan(Long value) {
            addCriterion("hire_salary >", value, "hireSalary");
            return (Criteria) this;
        }

        public Criteria andHireSalaryGreaterThanOrEqualTo(Long value) {
            addCriterion("hire_salary >=", value, "hireSalary");
            return (Criteria) this;
        }

        public Criteria andHireSalaryLessThan(Long value) {
            addCriterion("hire_salary <", value, "hireSalary");
            return (Criteria) this;
        }

        public Criteria andHireSalaryLessThanOrEqualTo(Long value) {
            addCriterion("hire_salary <=", value, "hireSalary");
            return (Criteria) this;
        }

        public Criteria andHireSalaryIn(List<Long> values) {
            addCriterion("hire_salary in", values, "hireSalary");
            return (Criteria) this;
        }

        public Criteria andHireSalaryNotIn(List<Long> values) {
            addCriterion("hire_salary not in", values, "hireSalary");
            return (Criteria) this;
        }

        public Criteria andHireSalaryBetween(Long value1, Long value2) {
            addCriterion("hire_salary between", value1, value2, "hireSalary");
            return (Criteria) this;
        }

        public Criteria andHireSalaryNotBetween(Long value1, Long value2) {
            addCriterion("hire_salary not between", value1, value2, "hireSalary");
            return (Criteria) this;
        }

        public Criteria andHireYearsIsNull() {
            addCriterion("hire_years is null");
            return (Criteria) this;
        }

        public Criteria andHireYearsIsNotNull() {
            addCriterion("hire_years is not null");
            return (Criteria) this;
        }

        public Criteria andHireYearsEqualTo(Integer value) {
            addCriterion("hire_years =", value, "hireYears");
            return (Criteria) this;
        }

        public Criteria andHireYearsNotEqualTo(Integer value) {
            addCriterion("hire_years <>", value, "hireYears");
            return (Criteria) this;
        }

        public Criteria andHireYearsGreaterThan(Integer value) {
            addCriterion("hire_years >", value, "hireYears");
            return (Criteria) this;
        }

        public Criteria andHireYearsGreaterThanOrEqualTo(Integer value) {
            addCriterion("hire_years >=", value, "hireYears");
            return (Criteria) this;
        }

        public Criteria andHireYearsLessThan(Integer value) {
            addCriterion("hire_years <", value, "hireYears");
            return (Criteria) this;
        }

        public Criteria andHireYearsLessThanOrEqualTo(Integer value) {
            addCriterion("hire_years <=", value, "hireYears");
            return (Criteria) this;
        }

        public Criteria andHireYearsIn(List<Integer> values) {
            addCriterion("hire_years in", values, "hireYears");
            return (Criteria) this;
        }

        public Criteria andHireYearsNotIn(List<Integer> values) {
            addCriterion("hire_years not in", values, "hireYears");
            return (Criteria) this;
        }

        public Criteria andHireYearsBetween(Integer value1, Integer value2) {
            addCriterion("hire_years between", value1, value2, "hireYears");
            return (Criteria) this;
        }

        public Criteria andHireYearsNotBetween(Integer value1, Integer value2) {
            addCriterion("hire_years not between", value1, value2, "hireYears");
            return (Criteria) this;
        }

        public Criteria andHireEducationIsNull() {
            addCriterion("hire_education is null");
            return (Criteria) this;
        }

        public Criteria andHireEducationIsNotNull() {
            addCriterion("hire_education is not null");
            return (Criteria) this;
        }

        public Criteria andHireEducationEqualTo(String value) {
            addCriterion("hire_education =", value, "hireEducation");
            return (Criteria) this;
        }

        public Criteria andHireEducationNotEqualTo(String value) {
            addCriterion("hire_education <>", value, "hireEducation");
            return (Criteria) this;
        }

        public Criteria andHireEducationGreaterThan(String value) {
            addCriterion("hire_education >", value, "hireEducation");
            return (Criteria) this;
        }

        public Criteria andHireEducationGreaterThanOrEqualTo(String value) {
            addCriterion("hire_education >=", value, "hireEducation");
            return (Criteria) this;
        }

        public Criteria andHireEducationLessThan(String value) {
            addCriterion("hire_education <", value, "hireEducation");
            return (Criteria) this;
        }

        public Criteria andHireEducationLessThanOrEqualTo(String value) {
            addCriterion("hire_education <=", value, "hireEducation");
            return (Criteria) this;
        }

        public Criteria andHireEducationLike(String value) {
            addCriterion("hire_education like", value, "hireEducation");
            return (Criteria) this;
        }

        public Criteria andHireEducationNotLike(String value) {
            addCriterion("hire_education not like", value, "hireEducation");
            return (Criteria) this;
        }

        public Criteria andHireEducationIn(List<String> values) {
            addCriterion("hire_education in", values, "hireEducation");
            return (Criteria) this;
        }

        public Criteria andHireEducationNotIn(List<String> values) {
            addCriterion("hire_education not in", values, "hireEducation");
            return (Criteria) this;
        }

        public Criteria andHireEducationBetween(String value1, String value2) {
            addCriterion("hire_education between", value1, value2, "hireEducation");
            return (Criteria) this;
        }

        public Criteria andHireEducationNotBetween(String value1, String value2) {
            addCriterion("hire_education not between", value1, value2, "hireEducation");
            return (Criteria) this;
        }

        public Criteria andHireLanguageIsNull() {
            addCriterion("hire_language is null");
            return (Criteria) this;
        }

        public Criteria andHireLanguageIsNotNull() {
            addCriterion("hire_language is not null");
            return (Criteria) this;
        }

        public Criteria andHireLanguageEqualTo(String value) {
            addCriterion("hire_language =", value, "hireLanguage");
            return (Criteria) this;
        }

        public Criteria andHireLanguageNotEqualTo(String value) {
            addCriterion("hire_language <>", value, "hireLanguage");
            return (Criteria) this;
        }

        public Criteria andHireLanguageGreaterThan(String value) {
            addCriterion("hire_language >", value, "hireLanguage");
            return (Criteria) this;
        }

        public Criteria andHireLanguageGreaterThanOrEqualTo(String value) {
            addCriterion("hire_language >=", value, "hireLanguage");
            return (Criteria) this;
        }

        public Criteria andHireLanguageLessThan(String value) {
            addCriterion("hire_language <", value, "hireLanguage");
            return (Criteria) this;
        }

        public Criteria andHireLanguageLessThanOrEqualTo(String value) {
            addCriterion("hire_language <=", value, "hireLanguage");
            return (Criteria) this;
        }

        public Criteria andHireLanguageLike(String value) {
            addCriterion("hire_language like", value, "hireLanguage");
            return (Criteria) this;
        }

        public Criteria andHireLanguageNotLike(String value) {
            addCriterion("hire_language not like", value, "hireLanguage");
            return (Criteria) this;
        }

        public Criteria andHireLanguageIn(List<String> values) {
            addCriterion("hire_language in", values, "hireLanguage");
            return (Criteria) this;
        }

        public Criteria andHireLanguageNotIn(List<String> values) {
            addCriterion("hire_language not in", values, "hireLanguage");
            return (Criteria) this;
        }

        public Criteria andHireLanguageBetween(String value1, String value2) {
            addCriterion("hire_language between", value1, value2, "hireLanguage");
            return (Criteria) this;
        }

        public Criteria andHireLanguageNotBetween(String value1, String value2) {
            addCriterion("hire_language not between", value1, value2, "hireLanguage");
            return (Criteria) this;
        }

        public Criteria andHireOccupationIsNull() {
            addCriterion("hire_occupation is null");
            return (Criteria) this;
        }

        public Criteria andHireOccupationIsNotNull() {
            addCriterion("hire_occupation is not null");
            return (Criteria) this;
        }

        public Criteria andHireOccupationEqualTo(String value) {
            addCriterion("hire_occupation =", value, "hireOccupation");
            return (Criteria) this;
        }

        public Criteria andHireOccupationNotEqualTo(String value) {
            addCriterion("hire_occupation <>", value, "hireOccupation");
            return (Criteria) this;
        }

        public Criteria andHireOccupationGreaterThan(String value) {
            addCriterion("hire_occupation >", value, "hireOccupation");
            return (Criteria) this;
        }

        public Criteria andHireOccupationGreaterThanOrEqualTo(String value) {
            addCriterion("hire_occupation >=", value, "hireOccupation");
            return (Criteria) this;
        }

        public Criteria andHireOccupationLessThan(String value) {
            addCriterion("hire_occupation <", value, "hireOccupation");
            return (Criteria) this;
        }

        public Criteria andHireOccupationLessThanOrEqualTo(String value) {
            addCriterion("hire_occupation <=", value, "hireOccupation");
            return (Criteria) this;
        }

        public Criteria andHireOccupationLike(String value) {
            addCriterion("hire_occupation like", value, "hireOccupation");
            return (Criteria) this;
        }

        public Criteria andHireOccupationNotLike(String value) {
            addCriterion("hire_occupation not like", value, "hireOccupation");
            return (Criteria) this;
        }

        public Criteria andHireOccupationIn(List<String> values) {
            addCriterion("hire_occupation in", values, "hireOccupation");
            return (Criteria) this;
        }

        public Criteria andHireOccupationNotIn(List<String> values) {
            addCriterion("hire_occupation not in", values, "hireOccupation");
            return (Criteria) this;
        }

        public Criteria andHireOccupationBetween(String value1, String value2) {
            addCriterion("hire_occupation between", value1, value2, "hireOccupation");
            return (Criteria) this;
        }

        public Criteria andHireOccupationNotBetween(String value1, String value2) {
            addCriterion("hire_occupation not between", value1, value2, "hireOccupation");
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