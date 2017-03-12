package com.cszjo.jobhunter.model;

import com.cszjo.jobhunter.serializer.LoginResponseSerializer;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 * Created by Han on 2017/3/5.
 * 注册操作返回(原型模式)
 */
@Component(value = "loginResponse")
@Scope("prototype")
@JsonSerialize(using = LoginResponseSerializer.class)
public class LoginResponse extends BaseResponse {

    private Users users;

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    @Override
    public String toString() {
        return "LoginResponse{" +
                "users=" + users +
                '}';
    }
}
