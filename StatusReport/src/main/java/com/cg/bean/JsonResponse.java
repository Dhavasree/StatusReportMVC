package com.cg.bean;

import java.sql.Timestamp;

public class JsonResponse {
	private boolean validated;
	private Timestamp timeStamp;
	
	public Timestamp getTimeStamp() {
		return timeStamp;
	}

	public void setTimeStamp(Timestamp timeStamp) {
		this.timeStamp = timeStamp;
	}

	public boolean isValidated() {
		return validated;
	}

	public void setValidated(boolean validated) {
		this.validated = validated;
	}

	@Override
	public String toString() {
		return "JsonResponse [validated=" + validated + ", timeStamp="
				+ timeStamp + "]";
	}
	
}
