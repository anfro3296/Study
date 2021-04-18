package com.members.dao;

import com.members.domain.MembersDTO;

public interface MembersDAO {
    public int idCheck(MembersDTO members);

    public void userJoin(MembersDTO members);

    public MembersDTO getId(MembersDTO members);

    public int getPwd(MembersDTO members);
}

