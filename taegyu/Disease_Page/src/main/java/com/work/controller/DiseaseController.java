package com.work.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class DiseaseController {
	
	/** 뇌질환 페이지 */
	@RequestMapping("/disease/diseaseBrain")
	public String diseaseBrain() {
		return "disease/diseaseBrain";
	}
	
	/** 심장질환 페이지 */
	@RequestMapping("/disease/diseaseHeart")
	public String diseaseHeart() {
		return "disease/diseaseHeart";
	}
	
	/** 간질환 페이지 */
	@RequestMapping("/disease/diseaseLiver")
	public String diseaseLiver() {
		return "disease/diseaseLiver";
	}
	
	/** 신장질환 페이지 */
	@RequestMapping("/disease/diseaseKidney")
	public String diseaseKidney() {
		return "disease/diseaseKidney";
	}
	
	/** 암 페이지 */
	@RequestMapping("/disease/diseaseCancerCell")
	public String diseaseCancerCell() {
		return "disease/diseaseCancerCell";
	}
	
	/** 당뇨병 페이지 */
	@RequestMapping("/disease/diseaseDiabetes")
	public String diseaseDiabetes() {
		return "disease/diseaseDiabetes";
	}
	
}
