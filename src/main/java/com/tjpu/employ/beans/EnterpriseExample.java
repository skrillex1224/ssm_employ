package com.tjpu.employ.beans;

import java.util.ArrayList;
import java.util.List;

public class EnterpriseExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public EnterpriseExample() {
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

        public Criteria andEnterIdIsNull() {
            addCriterion("enter_id is null");
            return (Criteria) this;
        }

        public Criteria andEnterIdIsNotNull() {
            addCriterion("enter_id is not null");
            return (Criteria) this;
        }

        public Criteria andEnterIdEqualTo(Integer value) {
            addCriterion("enter_id =", value, "enterId");
            return (Criteria) this;
        }

        public Criteria andEnterIdNotEqualTo(Integer value) {
            addCriterion("enter_id <>", value, "enterId");
            return (Criteria) this;
        }

        public Criteria andEnterIdGreaterThan(Integer value) {
            addCriterion("enter_id >", value, "enterId");
            return (Criteria) this;
        }

        public Criteria andEnterIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("enter_id >=", value, "enterId");
            return (Criteria) this;
        }

        public Criteria andEnterIdLessThan(Integer value) {
            addCriterion("enter_id <", value, "enterId");
            return (Criteria) this;
        }

        public Criteria andEnterIdLessThanOrEqualTo(Integer value) {
            addCriterion("enter_id <=", value, "enterId");
            return (Criteria) this;
        }

        public Criteria andEnterIdIn(List<Integer> values) {
            addCriterion("enter_id in", values, "enterId");
            return (Criteria) this;
        }

        public Criteria andEnterIdNotIn(List<Integer> values) {
            addCriterion("enter_id not in", values, "enterId");
            return (Criteria) this;
        }

        public Criteria andEnterIdBetween(Integer value1, Integer value2) {
            addCriterion("enter_id between", value1, value2, "enterId");
            return (Criteria) this;
        }

        public Criteria andEnterIdNotBetween(Integer value1, Integer value2) {
            addCriterion("enter_id not between", value1, value2, "enterId");
            return (Criteria) this;
        }

        public Criteria andEnterNameIsNull() {
            addCriterion("enter_name is null");
            return (Criteria) this;
        }

        public Criteria andEnterNameIsNotNull() {
            addCriterion("enter_name is not null");
            return (Criteria) this;
        }

        public Criteria andEnterNameEqualTo(String value) {
            addCriterion("enter_name =", value, "enterName");
            return (Criteria) this;
        }

        public Criteria andEnterNameNotEqualTo(String value) {
            addCriterion("enter_name <>", value, "enterName");
            return (Criteria) this;
        }

        public Criteria andEnterNameGreaterThan(String value) {
            addCriterion("enter_name >", value, "enterName");
            return (Criteria) this;
        }

        public Criteria andEnterNameGreaterThanOrEqualTo(String value) {
            addCriterion("enter_name >=", value, "enterName");
            return (Criteria) this;
        }

        public Criteria andEnterNameLessThan(String value) {
            addCriterion("enter_name <", value, "enterName");
            return (Criteria) this;
        }

        public Criteria andEnterNameLessThanOrEqualTo(String value) {
            addCriterion("enter_name <=", value, "enterName");
            return (Criteria) this;
        }

        public Criteria andEnterNameLike(String value) {
            addCriterion("enter_name like", value, "enterName");
            return (Criteria) this;
        }

        public Criteria andEnterNameNotLike(String value) {
            addCriterion("enter_name not like", value, "enterName");
            return (Criteria) this;
        }

        public Criteria andEnterNameIn(List<String> values) {
            addCriterion("enter_name in", values, "enterName");
            return (Criteria) this;
        }

        public Criteria andEnterNameNotIn(List<String> values) {
            addCriterion("enter_name not in", values, "enterName");
            return (Criteria) this;
        }

        public Criteria andEnterNameBetween(String value1, String value2) {
            addCriterion("enter_name between", value1, value2, "enterName");
            return (Criteria) this;
        }

        public Criteria andEnterNameNotBetween(String value1, String value2) {
            addCriterion("enter_name not between", value1, value2, "enterName");
            return (Criteria) this;
        }

        public Criteria andEnterEmailIsNull() {
            addCriterion("enter_email is null");
            return (Criteria) this;
        }

        public Criteria andEnterEmailIsNotNull() {
            addCriterion("enter_email is not null");
            return (Criteria) this;
        }

        public Criteria andEnterEmailEqualTo(String value) {
            addCriterion("enter_email =", value, "enterEmail");
            return (Criteria) this;
        }

        public Criteria andEnterEmailNotEqualTo(String value) {
            addCriterion("enter_email <>", value, "enterEmail");
            return (Criteria) this;
        }

        public Criteria andEnterEmailGreaterThan(String value) {
            addCriterion("enter_email >", value, "enterEmail");
            return (Criteria) this;
        }

        public Criteria andEnterEmailGreaterThanOrEqualTo(String value) {
            addCriterion("enter_email >=", value, "enterEmail");
            return (Criteria) this;
        }

        public Criteria andEnterEmailLessThan(String value) {
            addCriterion("enter_email <", value, "enterEmail");
            return (Criteria) this;
        }

        public Criteria andEnterEmailLessThanOrEqualTo(String value) {
            addCriterion("enter_email <=", value, "enterEmail");
            return (Criteria) this;
        }

        public Criteria andEnterEmailLike(String value) {
            addCriterion("enter_email like", value, "enterEmail");
            return (Criteria) this;
        }

        public Criteria andEnterEmailNotLike(String value) {
            addCriterion("enter_email not like", value, "enterEmail");
            return (Criteria) this;
        }

        public Criteria andEnterEmailIn(List<String> values) {
            addCriterion("enter_email in", values, "enterEmail");
            return (Criteria) this;
        }

        public Criteria andEnterEmailNotIn(List<String> values) {
            addCriterion("enter_email not in", values, "enterEmail");
            return (Criteria) this;
        }

        public Criteria andEnterEmailBetween(String value1, String value2) {
            addCriterion("enter_email between", value1, value2, "enterEmail");
            return (Criteria) this;
        }

        public Criteria andEnterEmailNotBetween(String value1, String value2) {
            addCriterion("enter_email not between", value1, value2, "enterEmail");
            return (Criteria) this;
        }

        public Criteria andEnterPasswordIsNull() {
            addCriterion("enter_password is null");
            return (Criteria) this;
        }

        public Criteria andEnterPasswordIsNotNull() {
            addCriterion("enter_password is not null");
            return (Criteria) this;
        }

        public Criteria andEnterPasswordEqualTo(String value) {
            addCriterion("enter_password =", value, "enterPassword");
            return (Criteria) this;
        }

        public Criteria andEnterPasswordNotEqualTo(String value) {
            addCriterion("enter_password <>", value, "enterPassword");
            return (Criteria) this;
        }

        public Criteria andEnterPasswordGreaterThan(String value) {
            addCriterion("enter_password >", value, "enterPassword");
            return (Criteria) this;
        }

        public Criteria andEnterPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("enter_password >=", value, "enterPassword");
            return (Criteria) this;
        }

        public Criteria andEnterPasswordLessThan(String value) {
            addCriterion("enter_password <", value, "enterPassword");
            return (Criteria) this;
        }

        public Criteria andEnterPasswordLessThanOrEqualTo(String value) {
            addCriterion("enter_password <=", value, "enterPassword");
            return (Criteria) this;
        }

        public Criteria andEnterPasswordLike(String value) {
            addCriterion("enter_password like", value, "enterPassword");
            return (Criteria) this;
        }

        public Criteria andEnterPasswordNotLike(String value) {
            addCriterion("enter_password not like", value, "enterPassword");
            return (Criteria) this;
        }

        public Criteria andEnterPasswordIn(List<String> values) {
            addCriterion("enter_password in", values, "enterPassword");
            return (Criteria) this;
        }

        public Criteria andEnterPasswordNotIn(List<String> values) {
            addCriterion("enter_password not in", values, "enterPassword");
            return (Criteria) this;
        }

        public Criteria andEnterPasswordBetween(String value1, String value2) {
            addCriterion("enter_password between", value1, value2, "enterPassword");
            return (Criteria) this;
        }

        public Criteria andEnterPasswordNotBetween(String value1, String value2) {
            addCriterion("enter_password not between", value1, value2, "enterPassword");
            return (Criteria) this;
        }

        public Criteria andEnterUsernameIsNull() {
            addCriterion("enter_username is null");
            return (Criteria) this;
        }

        public Criteria andEnterUsernameIsNotNull() {
            addCriterion("enter_username is not null");
            return (Criteria) this;
        }

        public Criteria andEnterUsernameEqualTo(String value) {
            addCriterion("enter_username =", value, "enterUsername");
            return (Criteria) this;
        }

        public Criteria andEnterUsernameNotEqualTo(String value) {
            addCriterion("enter_username <>", value, "enterUsername");
            return (Criteria) this;
        }

        public Criteria andEnterUsernameGreaterThan(String value) {
            addCriterion("enter_username >", value, "enterUsername");
            return (Criteria) this;
        }

        public Criteria andEnterUsernameGreaterThanOrEqualTo(String value) {
            addCriterion("enter_username >=", value, "enterUsername");
            return (Criteria) this;
        }

        public Criteria andEnterUsernameLessThan(String value) {
            addCriterion("enter_username <", value, "enterUsername");
            return (Criteria) this;
        }

        public Criteria andEnterUsernameLessThanOrEqualTo(String value) {
            addCriterion("enter_username <=", value, "enterUsername");
            return (Criteria) this;
        }

        public Criteria andEnterUsernameLike(String value) {
            addCriterion("enter_username like", value, "enterUsername");
            return (Criteria) this;
        }

        public Criteria andEnterUsernameNotLike(String value) {
            addCriterion("enter_username not like", value, "enterUsername");
            return (Criteria) this;
        }

        public Criteria andEnterUsernameIn(List<String> values) {
            addCriterion("enter_username in", values, "enterUsername");
            return (Criteria) this;
        }

        public Criteria andEnterUsernameNotIn(List<String> values) {
            addCriterion("enter_username not in", values, "enterUsername");
            return (Criteria) this;
        }

        public Criteria andEnterUsernameBetween(String value1, String value2) {
            addCriterion("enter_username between", value1, value2, "enterUsername");
            return (Criteria) this;
        }

        public Criteria andEnterUsernameNotBetween(String value1, String value2) {
            addCriterion("enter_username not between", value1, value2, "enterUsername");
            return (Criteria) this;
        }

        public Criteria andEnterTypeIsNull() {
            addCriterion("enter_type is null");
            return (Criteria) this;
        }

        public Criteria andEnterTypeIsNotNull() {
            addCriterion("enter_type is not null");
            return (Criteria) this;
        }

        public Criteria andEnterTypeEqualTo(String value) {
            addCriterion("enter_type =", value, "enterType");
            return (Criteria) this;
        }

        public Criteria andEnterTypeNotEqualTo(String value) {
            addCriterion("enter_type <>", value, "enterType");
            return (Criteria) this;
        }

        public Criteria andEnterTypeGreaterThan(String value) {
            addCriterion("enter_type >", value, "enterType");
            return (Criteria) this;
        }

        public Criteria andEnterTypeGreaterThanOrEqualTo(String value) {
            addCriterion("enter_type >=", value, "enterType");
            return (Criteria) this;
        }

        public Criteria andEnterTypeLessThan(String value) {
            addCriterion("enter_type <", value, "enterType");
            return (Criteria) this;
        }

        public Criteria andEnterTypeLessThanOrEqualTo(String value) {
            addCriterion("enter_type <=", value, "enterType");
            return (Criteria) this;
        }

        public Criteria andEnterTypeLike(String value) {
            addCriterion("enter_type like", value, "enterType");
            return (Criteria) this;
        }

        public Criteria andEnterTypeNotLike(String value) {
            addCriterion("enter_type not like", value, "enterType");
            return (Criteria) this;
        }

        public Criteria andEnterTypeIn(List<String> values) {
            addCriterion("enter_type in", values, "enterType");
            return (Criteria) this;
        }

        public Criteria andEnterTypeNotIn(List<String> values) {
            addCriterion("enter_type not in", values, "enterType");
            return (Criteria) this;
        }

        public Criteria andEnterTypeBetween(String value1, String value2) {
            addCriterion("enter_type between", value1, value2, "enterType");
            return (Criteria) this;
        }

        public Criteria andEnterTypeNotBetween(String value1, String value2) {
            addCriterion("enter_type not between", value1, value2, "enterType");
            return (Criteria) this;
        }

        public Criteria andEnterInfoIsNull() {
            addCriterion("enter_info is null");
            return (Criteria) this;
        }

        public Criteria andEnterInfoIsNotNull() {
            addCriterion("enter_info is not null");
            return (Criteria) this;
        }

        public Criteria andEnterInfoEqualTo(String value) {
            addCriterion("enter_info =", value, "enterInfo");
            return (Criteria) this;
        }

        public Criteria andEnterInfoNotEqualTo(String value) {
            addCriterion("enter_info <>", value, "enterInfo");
            return (Criteria) this;
        }

        public Criteria andEnterInfoGreaterThan(String value) {
            addCriterion("enter_info >", value, "enterInfo");
            return (Criteria) this;
        }

        public Criteria andEnterInfoGreaterThanOrEqualTo(String value) {
            addCriterion("enter_info >=", value, "enterInfo");
            return (Criteria) this;
        }

        public Criteria andEnterInfoLessThan(String value) {
            addCriterion("enter_info <", value, "enterInfo");
            return (Criteria) this;
        }

        public Criteria andEnterInfoLessThanOrEqualTo(String value) {
            addCriterion("enter_info <=", value, "enterInfo");
            return (Criteria) this;
        }

        public Criteria andEnterInfoLike(String value) {
            addCriterion("enter_info like", value, "enterInfo");
            return (Criteria) this;
        }

        public Criteria andEnterInfoNotLike(String value) {
            addCriterion("enter_info not like", value, "enterInfo");
            return (Criteria) this;
        }

        public Criteria andEnterInfoIn(List<String> values) {
            addCriterion("enter_info in", values, "enterInfo");
            return (Criteria) this;
        }

        public Criteria andEnterInfoNotIn(List<String> values) {
            addCriterion("enter_info not in", values, "enterInfo");
            return (Criteria) this;
        }

        public Criteria andEnterInfoBetween(String value1, String value2) {
            addCriterion("enter_info between", value1, value2, "enterInfo");
            return (Criteria) this;
        }

        public Criteria andEnterInfoNotBetween(String value1, String value2) {
            addCriterion("enter_info not between", value1, value2, "enterInfo");
            return (Criteria) this;
        }

        public Criteria andEnterLocationIsNull() {
            addCriterion("enter_location is null");
            return (Criteria) this;
        }

        public Criteria andEnterLocationIsNotNull() {
            addCriterion("enter_location is not null");
            return (Criteria) this;
        }

        public Criteria andEnterLocationEqualTo(String value) {
            addCriterion("enter_location =", value, "enterLocation");
            return (Criteria) this;
        }

        public Criteria andEnterLocationNotEqualTo(String value) {
            addCriterion("enter_location <>", value, "enterLocation");
            return (Criteria) this;
        }

        public Criteria andEnterLocationGreaterThan(String value) {
            addCriterion("enter_location >", value, "enterLocation");
            return (Criteria) this;
        }

        public Criteria andEnterLocationGreaterThanOrEqualTo(String value) {
            addCriterion("enter_location >=", value, "enterLocation");
            return (Criteria) this;
        }

        public Criteria andEnterLocationLessThan(String value) {
            addCriterion("enter_location <", value, "enterLocation");
            return (Criteria) this;
        }

        public Criteria andEnterLocationLessThanOrEqualTo(String value) {
            addCriterion("enter_location <=", value, "enterLocation");
            return (Criteria) this;
        }

        public Criteria andEnterLocationLike(String value) {
            addCriterion("enter_location like", value, "enterLocation");
            return (Criteria) this;
        }

        public Criteria andEnterLocationNotLike(String value) {
            addCriterion("enter_location not like", value, "enterLocation");
            return (Criteria) this;
        }

        public Criteria andEnterLocationIn(List<String> values) {
            addCriterion("enter_location in", values, "enterLocation");
            return (Criteria) this;
        }

        public Criteria andEnterLocationNotIn(List<String> values) {
            addCriterion("enter_location not in", values, "enterLocation");
            return (Criteria) this;
        }

        public Criteria andEnterLocationBetween(String value1, String value2) {
            addCriterion("enter_location between", value1, value2, "enterLocation");
            return (Criteria) this;
        }

        public Criteria andEnterLocationNotBetween(String value1, String value2) {
            addCriterion("enter_location not between", value1, value2, "enterLocation");
            return (Criteria) this;
        }

        public Criteria andEnterPhoneIsNull() {
            addCriterion("enter_phone is null");
            return (Criteria) this;
        }

        public Criteria andEnterPhoneIsNotNull() {
            addCriterion("enter_phone is not null");
            return (Criteria) this;
        }

        public Criteria andEnterPhoneEqualTo(String value) {
            addCriterion("enter_phone =", value, "enterPhone");
            return (Criteria) this;
        }

        public Criteria andEnterPhoneNotEqualTo(String value) {
            addCriterion("enter_phone <>", value, "enterPhone");
            return (Criteria) this;
        }

        public Criteria andEnterPhoneGreaterThan(String value) {
            addCriterion("enter_phone >", value, "enterPhone");
            return (Criteria) this;
        }

        public Criteria andEnterPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("enter_phone >=", value, "enterPhone");
            return (Criteria) this;
        }

        public Criteria andEnterPhoneLessThan(String value) {
            addCriterion("enter_phone <", value, "enterPhone");
            return (Criteria) this;
        }

        public Criteria andEnterPhoneLessThanOrEqualTo(String value) {
            addCriterion("enter_phone <=", value, "enterPhone");
            return (Criteria) this;
        }

        public Criteria andEnterPhoneLike(String value) {
            addCriterion("enter_phone like", value, "enterPhone");
            return (Criteria) this;
        }

        public Criteria andEnterPhoneNotLike(String value) {
            addCriterion("enter_phone not like", value, "enterPhone");
            return (Criteria) this;
        }

        public Criteria andEnterPhoneIn(List<String> values) {
            addCriterion("enter_phone in", values, "enterPhone");
            return (Criteria) this;
        }

        public Criteria andEnterPhoneNotIn(List<String> values) {
            addCriterion("enter_phone not in", values, "enterPhone");
            return (Criteria) this;
        }

        public Criteria andEnterPhoneBetween(String value1, String value2) {
            addCriterion("enter_phone between", value1, value2, "enterPhone");
            return (Criteria) this;
        }

        public Criteria andEnterPhoneNotBetween(String value1, String value2) {
            addCriterion("enter_phone not between", value1, value2, "enterPhone");
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