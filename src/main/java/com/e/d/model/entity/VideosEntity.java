package com.e.d.model.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "WHYNOT_VIDEOS")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class VideosEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "video_id", nullable = false)
	private long videoId;
	
	@Column(name = "creator", nullable = false)
	private String creator;
	
	@Column(name = "creator_val", nullable = false)
	private long creatorVal;
	
	@Column(name = "title", nullable = false)
	private String title;
	
	@Column(name = "more")
	private String more;
	
	@Column(name = "video_name", nullable = false)
	private String videoName;
	
	@Column(name = "video_path", nullable = false)
	private String videoPath;
	
	@Column(name = "img_name", nullable = false)
	private String imgName;
	
	@Column(name = "img_path", nullable = false)
	private String imgPath;
	
	@Column(name = "create_at", nullable = false)
	private String createAt;
	
	@Column(name = "front_profile_img", nullable = false)
	private String frontProfileImg;
	
	@Column(name = "v", unique = true, nullable = false)
	private String v;
	
	@Column(name = "views")
	private long views;
	
	@Column(name = "likes")
	private long likes;
	
	@Column(name = "unlikes")
	private long unlikes;
	
	@Column(name = "comment_count")
	private long commentCount;
	
	@Column(name = "tag")
	private String tag;
	
	public void incrementVideoViews() {
		this.views++;
	}
	
}