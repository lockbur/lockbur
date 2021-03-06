<%-- 
    Document   : random next page
    Created on : 2015-9-6, 12:10:46
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="row row-sm">
    <c:forEach items="${list}" var="photos" varStatus="idx">
        <div class="col-xs-6 col-sm-4 col-md-3">
            <div class="item">
                <div class="pos-rlt">
                    <div class="item-overlay opacity r r-2x">
                        <c:if test="${appBean.getCurrentUser() != null}">
                            <div class="top">
                                <a href="#" data-photos-id="${photos.id}" class="pull-right m-t-n-xs m-r-n-xs badge bg-danger count addFavorite">
                                    <i class="fa fa-star"></i>
                                </a>
                                <span class="pull-right m-t-n-xs m-r-n-xs badge bg-white count hide">
                                    <i class="fa fa-spinner fa fa-spin fa fa-large"></i>
                                </span>
                                <!-- 已收藏过 -->
                                <a href="#" class="pull-right m-t-n-xs m-r-n-xs badge bg-white-only count hide">
                                    <i class="fa fa-star text-danger"></i>
                                </a>
                            </div>
                        </c:if>
                        <div class="center text-center m-t-n">
                            <a href="${pageContext.request.contextPath}/wallpaper/${photos.id}"><i class="icon-control-play i-2x"></i></a>
                        </div>
                    </div>
                    <!--当图片加载完移除loading-->
                    <a href="${pageContext.request.contextPath}/wallpaper/${photos.id}">
                        <img src="${pageContext.request.contextPath}/assets/images/images300x200.jpg" data-original="${photos.storageHost}/${photos.thumbnail}" data-provider="lazyload" class="r r- img-full">
                    </a>
                </div>
                <div class="wrapper-sm"></div>
            </div>
        </div>
        <!--gallery end first// old-->
    </c:forEach>
</div>


