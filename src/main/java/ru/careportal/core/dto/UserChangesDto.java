package ru.careportal.core.dto;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * UserChangesDto
 * created by Ksenya_Ushakova at 04.08.2020
 */
@Data
@Slf4j
public class UserChangesDto {
    private List<UserDto> userDtoList = new ArrayList<>();

}
