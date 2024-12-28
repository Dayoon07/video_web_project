<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="${ cl }/source/img/videoPlayer-icon.png" type="image/x-icon">
    <link rel="stylesheet" href="${ cl }/source/css/custom.css">
	<title>${ searchWord } - whynot</title>
</head>
<body>
	<jsp:include page="${ cl }/WEB-INF/common/header.jsp" />
	
	<div class="max-w-7xl mx-auto p-4">
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
        
        	<c:forEach var="searchVideos" items="${ searchList }">
        		<div class="flex flex-col gap-2 p-2 rounded-lg hover:bg-gray-200">
	                <div class="relative group">
	                    <div class="aspect-video bg-gray-200 rounded-lg overflow-hidden">
	                        <a href="${ cl }/watch?v=${ searchVideos.v }">
	                        	<img src="${ searchVideos.imgPath }" alt="Video thumbnail" class="w-full h-full object-cover">
	                        </a>
	                    </div>
	                </div>
	                <div class="flex gap-2">
	                    <a href="${ cl }/channel/${ searchVideos.creator }">
	                    	<img src="${ searchVideos.frontProfileImg }" class="w-10 h-10 rounded-full bg-gray-200 flex-shrink-0">
	                    </a>
	                    <div class="flex-1 min-w-0">
	                        <a href="${ cl }/watch?v=${ video.v }" class="font-medium text-sm line-clamp-2 hover:underline">
	                        	${ searchVideos.title }
	                        </a>
	                        <a href="${ cl }/channel/${ searchVideos.creator }" class="text-sm text-gray-600 hover:underline">
		                        ${ searchVideos.creator }
							</a>
	                        <div class="text-sm text-gray-600">
	                        	조회수 ${ searchVideos.views == 0 ? "없음" : searchVideos.views } | ${ searchVideos.createAt.substring(0, 4).equals(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy")))
	                        	 ? searchVideos.createAt.substring(6, 13) : searchVideos.createAt.substring(0, 13) }
	                        </div>
	                    </div>
	                </div>
	            </div>
        	</c:forEach>
        </div>
    </div>
	
	<jsp:include page="${ cl }/WEB-INF/common/footer.jsp" />
</body>
</html>