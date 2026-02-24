package com.davi.saas.agendamento.user.repository;

import com.davi.saas.agendamento.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.security.core.userdetails.UserDetails;

public interface UserRepository extends JpaRepository<User,Long> {
    UserDetails findByLogin(String login);
}
