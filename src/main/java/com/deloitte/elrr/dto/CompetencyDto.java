/**
 * 
 */
package com.deloitte.elrr.dto;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

/**
 * @author mnelakurti
 *
 */
@RequiredArgsConstructor
@AllArgsConstructor
@Data
@Getter
@Setter
public class CompetencyDto implements Serializable {


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long contactinformationid;
	private long personid;
	private String contactinformation;
	private String telephonenumber;
	private String isprimaryindicator;
	private String telephonetype;
	private String electronicmailaddress;
	private String electronicmailaddresstype;
	private String emergencycontact;
	private String recordstatus;
}