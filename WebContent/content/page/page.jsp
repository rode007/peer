<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<input type="hidden" name="pageBean.pageCount" id="pageCount" value="${pageBean.pageCount}" />
<input type="hidden" name="pageBean.pageIndex" id="pageIndex" value="${pageBean.pageIndex}" />
<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
        <c:forEach var="s"  begin="1" end="${pageBean.pageCount}" varStatus="s">
        <c:if test="${s.index == s.begin}">
        <c:choose>
        <c:when test="${s.begin == pageBean.pageIndex}">
        <li class="page-item disabled">
            <a class="page-link" onclick="jumpPage(${pageBean.pageCount-1})" href="javascript:void(0);" aria-label="Previous">
                <span aria-hidden="true"><<</span>
            </a>
            </c:when>
            <c:otherwise>
        <li class="page-item">
            <a class="page-link" onclick="jumpPage(${pageBean.pageIndex-1})" href="javascript:void(0);" aria-label="Previous">
                <span aria-hidden="true"><<</span>
            </a>
            </c:otherwise>
            </c:choose>
            </c:if>
        </li>

        <c:choose>
            <c:when test="${pageBean.pageIndex == s.index}">
                <li class="page-item disabled"><a class="page-link" href="#">${pageBean.pageIndex}</a></li>
            </c:when>
            <c:otherwise>
                <li class="page-item"><a class="page-link" onclick="jumpPage(${s.index})" href="javascript:void(0);">${s.index}</a></li>
            </c:otherwise>
        </c:choose>

        <c:if test="${s.index == s.end}">
        <c:choose>
        <c:when test="${s.end == pageBean.pageIndex}">
        <li class="page-item disabled">
            <a class="page-link" onclick="jumpPage(${pageBean.pageIndex+1})" href="javascript:void(0);" aria-label="Next">
                <span aria-hidden="true">>></span>
            </a>
            </c:when>
            <c:otherwise>
        <li class="page-item">
            <a class="page-link" onclick="jumpPage(${pageBean.pageIndex+1})" href="javascript:void(0);" aria-label="Next">
                <span aria-hidden="true">>></span>
            </a>
            </c:otherwise>
            </c:choose>
            </c:if>
            </c:forEach>
        </li>
    </ul>
</nav>

<script type="text/javascript">
    jumpPage = function(index){
        document.getElementsByName("pageBean.pageIndex")[0].value = index;
        document.forms[0].submit();
    }
</script>
