package com.davi.saas.agendamento.auth.dto;

import com.davi.saas.agendamento.user.enums.UserRole;

public record RegisterDTO(String login, String password, UserRole role) {
}
