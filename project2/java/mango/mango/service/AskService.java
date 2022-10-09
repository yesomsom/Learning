package mango.mango.service;

import mango.mango.model.AskDTO;

public interface AskService {
	//1:1 문의 등록
	public int insertAsk(AskDTO askDTO) throws Exception;

}
