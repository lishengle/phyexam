package com.hwadee.phyexam.exception;

public class LoginException extends RuntimeException{
	
	private static final long serialVersionUID = 8340732680744761646L;

	public LoginException() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public LoginException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

	public LoginException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public LoginException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public LoginException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

}