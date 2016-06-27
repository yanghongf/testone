<%@ tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/common/global.jsp" %>

<%@ attribute name="id" required="true" type="java.lang.String" %>
<%@ attribute name="pager" required="true" type="org.smart4j.framework.dao.bean.Pager" %>

<c:set var="pageNumber" value="${pager.pageNumber}"/>
<c:set var="pageSize" value="${pager.pageSize}"/>
<c:set var="totalRecord" value="${pager.totalRecord}"/>
<c:set var="totalPage" value="${pager.totalPage}"/>

<div class="css-row">
    <div class="css-right">
        <div>
            <span>page_number:</span>
            <input id="pageN" type="text" value="${pageNumber}" class="css-width-25 css-text-center ext-pager-pn">
            <span>/</span>
            <span id="pageT" class="ext-pager-tp">${totalPage}</span>
            <span class="css-blank-10"></span>
            <span>page_size:</span>
            <input type="text" value="${pageSize}" class="css-width-25 css-text-center ext-pager-ps">
            <span class="css-blank-10"></span>
            <span>total_record:</span>
            <span>${totalRecord}</span>
            <span class="css-blank-10"></span>
            <div class="css-button-group ext-pager-button">
                <c:choose>
                    <c:when test="${pageNumber > 1 && pageNumber <= totalPage}">
                        <button id="b1" type="button" title="pager.first" data-pn="1" onclick="change(1)">|&lt;</button>
                        <button id="b2" type="button" title="pager.pre" data-pn="${pageNumber - 1}" onclick="change(${pageNumber-1})">&lt;</button>
                    </c:when>
                    <c:otherwise>
                        <button id="b3" type="button" title="pager.first" disabled>|&lt;</button>
                        <button id="b4" type="button" title="pager.pre" disabled>&lt;</button>
                    </c:otherwise>
                </c:choose>
                <c:choose>
                    <c:when test="${pageNumber < totalPage}">
                        <button id="b5" type="button" title="pager.next" data-pn="${pageNumber + 1}" onclick="change(${pageNumber+1})">&gt;</button>
                        <button id="b6" type="button" title="pager.last" data-pn="${totalPage}" onclick="change(${totalPage})">&gt;|</button>
                    </c:when>
                    <c:otherwise>
                        <button id="b7" type="button" title="pager.next" disabled>&gt;</button>
                        <button id="b8" type="button" title="pager.last" disabled>&gt;|</button>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</div>