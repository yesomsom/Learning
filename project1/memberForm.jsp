<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<%request.setCharacterEncoding("utf-8");
	String to = request.getParameter("to");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/css}/css/memberForm.css">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>ex1</title>
</head>
<body>

<!-- 회원가입폼 member Form -->
<form method="post" action="${path}/page/memberForm/insert.do" onsubmit="return Validation();">
<%-- <form method="post" action="${path}/page/ex1/insert.do" > --%>
<!-- 타이틀 title -->
   <h1>회원가입</h1>


   
<!-- 이용약관 테이블 table -->
   <table>
<!-- 모두 동의 체크 -->
      <thead>
         <tr>
            <td><input type="checkbox" id="cbx_chkAll" /></td>
            <td>이용약관, 개인정보 수집 및 이용에 모두 동의합니다.</td>
         </tr>   
      </thead>
<!-- 체크 항목 & textarea -->
      <tbody>
         <tr>
            <td><input id="required_check_first" type="checkbox" class="chk"></td>
            <td>이용약관 <span class="font_red">(필수)</span></td>
         </tr>
         <tr>
            <td colspan="2">
               <textarea cols="70" rows="7">
Assemble 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 Assemble 서비스의 이용과 관련하여 Assemble 서비스를 제공하는 Assemble 주식회사(이하 ‘Assemble’)와 이를 이용하는 Assemble 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 Assemble 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
Assemble 서비스를 이용하시거나 Assemble 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.

다양한 Assemble 서비스를 즐겨보세요.
Assemble는 기본적으로 여러분 모두에게 동일한 내용의 서비스를 제공합니다. 다만, '청소년보호법' 등 관련 법령이나 기타 개별 서비스 제공에서의 특별한 필요에 의해서 연령 또는 일정한 등급을 기준으로 이용자를 구분하여 제공하는 서비스의 내용, 이용 시간, 이용 횟수 등을 다르게 하는 등 일부 이용을 제한하는 경우가 있습니다. 자세한 내용은 역시 각 서비스 상의 안내, 공지사항, 고객센터 도움말 등에서 확인하실 수 있습니다.
Assemble 서비스에는 기본적으로 본 약관이 적용됩니다만 Assemble가 다양한 서비스를 제공하는 과정에서 부득이 본 약관 외 별도의 약관, 운영정책 등을 적용하는 경우가 있습니다. 그리고 Assemble 계열사가 제공하는 특정 서비스의 경우에도 해당 운영 회사가 정한 고유의 약관, 운영정책 등이 적용될 수 있습니다. 이러한 내용은 각각의 해당 서비스 초기 화면에서 확인해 주시기 바랍니다.

회원으로 가입하시면 Assemble 서비스를 보다 편리하게 이용할 수 있습니다.
여러분은 본 약관을 읽고 동의하신 후 회원 가입을 신청하실 수 있으며, Assemble는 이에 대한 승낙을 통해 회원 가입 절차를 완료하고 여러분께 Assemble 서비스 이용 계정(이하 ‘계정’)을 부여합니다. 계정이란 회원이 Assemble 서비스에 로그인한 이후 이용하는 각종 서비스 이용 이력을 회원 별로 관리하기 위해 설정한 회원 식별 단위를 말합니다. 회원은 자신의 계정을 통해 좀더 다양한 Assemble 서비스를 보다 편리하게 이용할 수 있습니다. 이와 관련한 상세한 내용은 계정 운영정책 및 고객센터 내 Assemble 회원가입 방법 등에서 확인해 주세요.

여러분의 개인정보를 소중히 보호합니다.
Assemble는 서비스의 원활한 제공을 위하여 회원이 동의한 목적과 범위 내에서만 개인정보를 수집∙이용하며, 개인정보 보호 관련 법령에 따라 안전하게 관리합니다. Assemble가 이용자 및 회원에 대해 관련 개인정보를 안전하게 처리하기 위하여 기울이는 노력이나 기타 상세한 사항은 개인정보 처리방침에서 확인하실 수 있습니다.
Assemble는 여러분이 서비스를 이용하기 위해 일정 기간 동안 로그인 혹은 접속한 기록이 없는 경우, 전자메일, 서비스 내 알림 또는 기타 적절한 전자적 수단을 통해 사전에 안내해 드린 후 여러분의 정보를 파기하거나 분리 보관할 수 있으며, 만약 이로 인해 서비스 제공을 위해 필수적인 정보가 부족해질 경우 부득이 관련 서비스 이용계약을 해지할 수 있습니다.

Assemble 서비스 이용과 관련하여 몇 가지 주의사항이 있습니다.
Assemble는 여러분이 Assemble 서비스를 자유롭고 편리하게 이용할 수 있도록 최선을 다하고 있습니다. 다만, 여러분이 Assemble 서비스를 보다 안전하게 이용하고 Assemble 서비스에서 여러분과 타인의 권리가 서로 존중되고 보호받으려면 여러분의 도움과 협조가 필요합니다. 여러분의 안전한 서비스 이용과 권리 보호를 위해 부득이 아래와 같은 경우 여러분의 게시물 게재나 Assemble 서비스 이용이 제한될 수 있으므로, 이에 대한 확인 및 준수를 요청 드립니다.
•   회원 가입 시 이름, 생년월일, 휴대전화번호 등의 정보를 허위로 기재해서는 안 됩니다. 회원 계정에 등록된 정보는 항상 정확한 최신 정보가 유지될 수 있도록 관리해 주세요. 자신의 계정을 다른 사람에게 판매, 양도, 대여 또는 담보로 제공하거나 다른 사람에게 그 사용을 허락해서는 안 됩니다. 아울러 자신의 계정이 아닌 타인의 계정을 무단으로 사용해서는 안 됩니다. 이에 관한 상세한 내용은 계정 운영정책을 참고해 주시기 바랍니다.
•   타인에 대해 직접적이고 명백한 신체적 위협을 가하는 내용의 게시물, 타인의 자해 행위 또는 자살을 부추기거나 권장하는 내용의 게시물, 타인의 신상정보, 사생활 등 비공개 개인정보를 드러내는 내용의 게시물, 타인을 지속적으로 따돌리거나 괴롭히는 내용의 게시물, 성매매를 제안, 알선, 유인 또는 강요하는 내용의 게시물, 공공 안전에 대해 직접적이고 심각한 위협을 가하는 내용의 게시물은 제한될 수 있습니다.
•   관련 법령상 금지되거나 형사처벌의 대상이 되는 행위를 수행하거나 이를 교사 또는 방조하는 등의 범죄 관련 직접적인 위험이 확인된 게시물, 관련 법령에서 홍보, 광고, 판매 등을 금지하고 있는 물건 또는 서비스를 홍보, 광고, 판매하는 내용의 게시물, 타인의 지식재산권 등을 침해하거나 모욕, 사생활 침해 또는 명예훼손 등 타인의 권리를 침해하는 내용이 확인된 게시물은 제한될 수 있습니다.
•   자극적이고 노골적인 성행위를 묘사하는 등 타인에게 성적 수치심을 유발시키거나 왜곡된 성 의식 등을 야기할 수 있는 내용의 게시물, 타인에게 잔혹감 또는 혐오감을 일으킬 수 있는 폭력적이고 자극적인 내용의 게시물, 본인 이외의 자를 사칭하거나 허위사실을 주장하는 등 타인을 기만하는 내용의 게시물, 과도한 욕설, 비속어 등을 계속하여 반복적으로 사용하여 심한 혐오감 또는 불쾌감을 일으키는 내용의 게시물은 제한될 수 있습니다.
•   자동화된 수단을 활용하는 등 Assemble 서비스의 기능을 비정상적으로 이용하여 게재된 게시물, Assemble 각 개별 서비스의 제공 취지와 부합하지 않는 내용의 게시물은 다른 이용자들의 정상적인 Assemble 서비스 이용에 불편을 초래하고 더 나아가 Assemble의 원활한 서비스 제공을 방해하므로 역시 제한될 수 있습니다. 기타 제한되는 게시물에 관한 상세한 내용은 게시물 운영정책 및 각 개별 서비스에서의 약관, 운영정책 등을 참고해 주시기 바랍니다.
•   Assemble의 사전 허락 없이 자동화된 수단(예: 매크로 프로그램, 로봇(봇), 스파이더, 스크래퍼 등)을 이용하여 Assemble 서비스 회원으로 가입을 시도 또는 가입하거나, Assemble 서비스에 로그인을 시도 또는 로그인하거나, Assemble 서비스 상에 게시물을 게재하거나, Assemble 서비스를 통해 커뮤니케이션하거나(예: 전자메일, 쪽지 등), Assemble 서비스에 게재된 회원의 아이디(ID), 게시물 등을 수집하거나, Assemble 검색 서비스에서 특정 질의어로 검색하거나 혹은 그 검색결과에서 특정 검색결과를 선택(이른바 ‘클릭’)하는 등 이용자(사람)의 실제 이용을 전제로 하는 Assemble 서비스의 제공 취지에 부합하지 않는 방식으로 Assemble 서비스를 이용하거나 이와 같은 Assemble 서비스에 대한 어뷰징(남용) 행위를 막기 위한 Assemble의 기술적 조치를 무력화하려는 일체의 행위(예: IP를 지속적으로 바꿔가며 접속하는 행위, Captcha를 외부 솔루션 등을 통해 우회하거나 무력화 하는 행위 등)를 시도해서는 안 됩니다.
Assemble는 본 약관의 범위 내에서 게시물 운영정책, 각 개별 서비스에서의 약관 또는 운영정책, 각 서비스 상의 안내, 공지사항, 고객센터 도움말 등을 두어, 여러분에게 안정적이고 원활한 서비스 이용이 가능하도록 지원하고 있습니다. 각 세부 정책에는 여러분이 참고할 수 있도록 보다 구체적인 유의사항을 포함하고 있으니, 본 약관 본문 및 구성 페이지 상의 링크 등을 통해 이를 확인해 주시기 바랍니다.

언제든지 Assemble 서비스 이용계약을 해지하실 수 있습니다.
Assemble에게는 참 안타까운 일입니다만, 회원은 언제든지 Assemble 서비스 이용계약 해지를 신청하여 회원에서 탈퇴할 수 있으며, 이 경우 Assemble는 관련 법령 등이 정하는 바에 따라 이를 지체 없이 처리하겠습니다.

서비스 중단 또는 변경 시 꼭 알려드리겠습니다.
Assemble는 연중 무휴, 1일 24시간 안정적으로 서비스를 제공하기 위해 최선을 다하고 있습니다만, 컴퓨터, 서버 등 정보통신설비의 보수점검, 교체 또는 고장, 통신두절 등 운영상 상당한 이유가 있는 경우 부득이 서비스의 전부 또는 일부를 중단할 수 있습니다.
한편, Assemble는 서비스 운영 또는 개선을 위해 상당한 필요성이 있는 경우 서비스의 전부 또는 일부를 수정, 변경 또는 종료할 수 있습니다. 무료로 제공되는 서비스의 전부 또는 일부를 수정, 변경 또는 종료하게 된 경우 관련 법령에 특별한 규정이 없는 한 별도의 보상을 하지 않습니다.
이 경우 Assemble는 예측 가능한 경우 상당기간 전에 이를 안내하며, 만약 예측 불가능한 경우라면 사후 지체 없이 상세히 설명하고 안내 드리겠습니다. 또한 서비스 중단의 경우에는 여러분 자신의 콘텐츠를 백업할 수 있도록 합리적이고 충분한 기회를 제공하도록 하겠습니다.

주요 사항을 잘 안내하고 여러분의 소중한 의견에 귀 기울이겠습니다.
Assemble는 서비스 이용에 필요한 주요사항을 적시에 잘 안내해 드릴 수 있도록 힘쓰겠습니다. 회원에게 통지를 하는 경우 전자메일, 서비스 내 알림 또는 기타 적절한 전자적 수단을 통해 개별적으로 알려 드릴 것이며, 다만 회원 전체에 대한 통지가 필요할 경우엔 7일 이상 Assemble 도메인의 웹사이트 및 응용프로그램(어플리케이션, 앱) 초기 화면 또는 공지사항 등에 관련 내용을 게시하도록 하겠습니다.
Assemble는 여러분의 소중한 의견에 귀 기울이겠습니다. 여러분은 언제든지 고객센터를 통해 서비스 이용과 관련된 의견이나 개선사항을 전달할 수 있으며, Assemble는 합리적 범위 내에서 가능한 그 처리과정 및 결과를 여러분께 전달할 수 있도록 하겠습니다.

여러분이 쉽게 알 수 있도록 약관 및 운영정책을 게시하며 사전 공지 후 개정합니다.
Assemble는 본 약관의 내용을 여러분이 쉽게 확인할 수 있도록 서비스 초기 화면에 게시하고 있습니다.
Assemble는 수시로 본 약관, 계정 및 게시물 운영정책을 개정할 수 있습니다만, 관련 법령을 위배하지 않는 범위 내에서 개정할 것이며, 사전에 그 개정 이유와 적용 일자를 서비스 내에 알리도록 하겠습니다. 또한 여러분에게 불리할 수 있는 중대한 내용의 약관 변경의 경우에는 최소 30일 이전에 해당 서비스 내 공지하고 별도의 전자적 수단(전자메일, 서비스 내 알림 등)을 통해 개별적으로 알릴 것입니다.
Assemble는 변경된 약관을 게시한 날로부터 효력이 발생되는 날까지 약관 변경에 대한 여러분의 의견을 기다립니다. 위 기간이 지나도록 여러분의 의견이 Assemble에 접수되지 않으면, 여러분이 변경된 약관에 따라 서비스를 이용하는 데에 동의하는 것으로 간주됩니다. Assemble로서는 매우 안타까운 일이지만, 여러분이 변경된 약관에 동의하지 않는 경우 변경된 약관의 적용을 받는 해당 서비스의 제공이 더 이상 불가능하게 될 수 있습니다.
Assemble 서비스에는 기본적으로 본 약관이 적용됩니다만, 부득이 각 개별 서비스의 고유한 특성을 반영하기 위해 본 약관 외 별도의 약관, 운영정책이 추가로 적용될 때가 있습니다. 따라서 별도의 약관, 운영정책에서 그 개별 서비스 제공에 관하여 본 약관, 계정 및 게시물 운영정책과 다르게 정한 경우에는 별도의 약관, 운영정책이 우선하여 적용됩니다. 이러한 내용은 각각의 개별 서비스 초기 화면에서 확인해 주시기 바랍니다.
본 약관은 한국어를 정본으로 합니다. 본 약관 또는 Assemble 서비스와 관련된 여러분과 Assemble와의 관계에는 대한민국의 법령이 적용됩니다. 그리고 본 약관 또는 Assemble 서비스와 관련하여 여러분과 Assemble 사이에 분쟁이 발생할 경우, 그 분쟁의 처리는 대한민국 '민사소송법'에서 정한 절차를 따릅니다.
Assemble 서비스와 관련하여 궁금하신 사항이 있으시면 고객센터(대표번호: 1588 – 1111/ 평일 09:00~18:00)로 문의 주시기 바랍니다.

               </textarea>
            </td>
         </tr>
         <tr>
            <td><input id="required_check_second" type="checkbox" class="chk"></td>
            <td>개인정보수집 및 이용 <span class="font_red">(필수)</span></td>
         </tr>
         <td colspan="2">
               <textarea cols="70" rows="7">
개인정보보호법에 따라 Assemble에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
1. 수집하는 개인정보
회원제 서비스를 이용하기 위해 회원가입을 할 경우, Assemble는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
회원가입 시점에 Assemble가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
•   - 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 휴대전화번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다.
서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
- 회원정보 또는 개별 서비스에서 프로필 정보(별명, 프로필 사진)를 설정할 수 있습니다. 회원정보에 별명을 입력하지 않은 경우에는 마스킹 처리된 아이디가 별명으로 자동 입력됩니다.
- Assemble 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.
서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다. 또한 이미지 및 음성을 이용한 검색 서비스 등에서 이미지나 음성이 수집될 수 있습니다.
구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 자동화된 방법으로 생성하여 이를 저장(수집)하거나,
2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환하여 수집합니다. 서비스 이용 과정에서 위치정보가 수집될 수 있으며,
Assemble에서 제공하는 위치기반 서비스에 대해서는 'Assemble 위치기반서비스 이용약관'에서 자세하게 규정하고 있습니다.
이와 같이 수집된 정보는 개인정보와의 연계 여부 등에 따라 개인정보에 해당할 수 있고, 개인정보에 해당하지 않을 수도 있습니다.
2. 수집한 개인정보의 이용
Assemble 및 Assemble 관련 제반 서비스(모바일 웹/앱 포함)의 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.
•   - 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.
•   - 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.
•   - 법령 및 Assemble 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.
•   - 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.
•   - 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.
•   - 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.
3. 개인정보의 보관기간
회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.
단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.
이용자에게 개인정보 보관기간에 대해 회원가입 시 또는 서비스 가입 시 동의를 얻은 경우는 아래와 같습니다.
•   - 부정 가입 및 이용 방지
부정 이용자의 가입인증 휴대전화번호 또는 DI (만14세 미만의 경우 법정대리인DI) : 탈퇴일로부터 6개월 보관
탈퇴한 이용자의 휴대전화번호(복호화가 불가능한 일방향 암호화(해시처리)) : 탈퇴일로부터 6개월 보관
•   - Assemble 플러스 멤버십 서비스 혜택 중복 제공 방지
암호화처리(해시처리)한DI :혜택 제공 종료일로부터6개월 보관
전자상거래 등에서의 소비자 보호에 관한 법률, 전자문서 및 전자거래 기본법, 통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다. Assemble는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는 절대 이용하지 않습니다.
•   - 전자상거래 등에서 소비자 보호에 관한 법률
계약 또는 청약철회 등에 관한 기록: 5년 보관
대금결제 및 재화 등의 공급에 관한 기록: 5년 보관
소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관
•   - 전자문서 및 전자거래 기본법
공인전자주소를 통한 전자문서 유통에 관한 기록 : 10년 보관
•   - 전자서명 인증 업무
인증서와 인증 업무에 관한 기록: 인증서 효력 상실일로부터 10년 보관
•   - 통신비밀보호법
로그인 기록: 3개월
참고로 Assemble는 ‘개인정보 유효기간제’에 따라 1년간 서비스를 이용하지 않은 회원의 개인정보를 별도로 분리 보관하여 관리하고 있습니다.
4. 개인정보 수집 및 이용 동의를 거부할 권리
이용자는 개인정보의 수집 및 이용 동의를 거부할 권리가 있습니다. 회원가입 시 수집하는 최소한의 개인정보, 즉, 필수 항목에 대한 수집 및 이용 동의를 거부하실 경우, 회원가입이 어려울 수 있습니다.

               </textarea>
         </td>
<!-- 마케팅 수신 동의 체크항목 (선택 체크) -->
         <tr>
            <td><input type="checkbox" class="chk" id="check_choose" name="infoYN" value="Y"></td>
            <td>마케팅 수신 동의 (
               <input type="checkbox" name="agreeMar"> 이메일
               <input type="checkbox" name="agreeMar"> SMS )            
            <span class="font_red">(선택)</span></td>
         </tr>
         <tr>
            <td colspan="2">
               <textarea cols="70" rows="7">
Assemble에서 제공하는 이벤트/혜택 등 다양한 정보를 휴대전화(Assemble앱 알림 또는 문자), 이메일로 받아보실 수 있습니다. 일부 서비스의 경우, 개별 서비스에 대해 별도 수신 동의를 받을 수 있으며, 이때에도 수신 동의에 대해 별도로 안내하고 동의를 받습니다.
               </textarea>
            </td>
         </tr>
      </tbody>
   </table> 


<!-- 아이디 id -->   
   <div class="mem_id">
      <div>아이디<span class="font_red_top">*</span></div>
      <div><input name="memberId" id="id" class="second input_all" type="text" placeholder="4-20자: 영문 소문자,숫자조합"></div>
      <div id="id_success" class="padding_left font_small_red"></div>
   </div>


<!-- 비밀번호 pwd -->   
   <div class="mem_pwd">
      <div>비밀번호<span class="font_red_top">*</span></div>
      <div><input name="memberPwd" id="pwd" class="input_all" type="password" placeholder="6-20자:영문,숫자,특수문자조합"></div>
      <div id="pwd_success" class="padding_left font_small_red"></div>
   </div>

   

<!-- 비밀번호 일치 확인 pwd check -->      
   <div class="mem_pwd_check">
      <div>비밀번호 확인<span class="font_red_top">*</span></div>
      <div><input id="pwdCheck" class="input_all" type="password" placeholder="6-20자:영문,숫자,특수문자조합"></div>
      <div id="pwdCheck_" class="padding_left font_small_red"></div>
   </div>



<!-- 이름 name -->      
   <div class="mem_name">
      <div>이름<span class="font_red_top">*</span></div>
      <div><input name="memberName" id="userName" class="input_all" type="text"></div>
      <div id="name_success" class="padding_left"></div>
   </div>

<!-- 성별 gender -->      
   <div class="mem_gender">
      <div>성별</div>
      <div>
         <select name="memberGender" id="gender_select" class="select_box_gender" name='mem_gender_select'>
            <option value='' selected>성별 선택</option>
            <option value='male'>남성</option>
            <option value='female'>여성</option>
         </select>
      </div>
      <div class="padding_left"></div>
   </div>

<!-- 휴대전화 phone -->   
   <div class="mem_phone">
      <div>휴대전화</div>
<!-- 휴대전화 phone number -->
      <div class="phone_num">
         <div class="phone_num_all">
            <input name="to" id="phoneNum_all" class="input_all phone_num_all_input" type="text" readonly>
            
                      
         </div>         
      </div>
      <div class="padding_left">
         <input id="ph" class="btn_" type="button" value="인증" onClick="opensms();">
      </div>
   </div>





<!-- 
   <div class="mem_message_confirm">
      <div>SMS 인증번호</div>
      <div><input id="SMSNum" class="input_all" type="text"></div>
      <div class="padding_left">
         <input id="enterBtn" class="btn_" type="button" value="확인" onClick="Smscheck();">
         <input type="hidden" name="text" id="text">   인증번호를 히든으로 저장해서 보낸다
      </div>
   </div> -->
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
<!-- 생년월일 birth -->   
   <div class="mem_birth">
      <div>생년월일</div>
      <div>
         <input name="birth" id="birth" class="input_all" type="date">
      </div>
      <div class="padding_left"></div>
   </div>

<!-- 이메일 email -->   
   <div class="mem_email">
      <div>이메일</div>
<!-- 이메일 email 주소 -->   
      <div class="email_all">
<!-- 이메일 email 주소 앞자리 -->
         <div class="email_first">
            <input name="email" id="email" class="input_all email_first_input" type="text">
         </div>
         <div class="div_margin">@</div>
<!-- 이메일 email 주소 도메인 -->
         <div class="email_third">
            <select name="emailDomain" class="select_box_email" name="select_email">
               <option value="naver">naver.com</option>
               <option value="gmail">gmail.com</option>
               <option value="daum">daum.net</option>
               <option value="hanmail">hanmail.net</option>
               <option value="nate">nate.com</option>
               <option value="hotmail">hotmail.com</option>
            </select>         
         </div>
      </div>
      <div class="padding_left"></div>
   </div>

   
     
<!-- 버튼 button -->
   <div class="button_all">
      <input class="btn" type="submit" value="가입">
      <input class="btn" type="reset" value="취소">
   </div>
</form>

<script>
/* 전체 동의 체크 */

/* 
1. 전체 동의 클릭 시 아래 체크 항목 모두 체크됨
2. 전체 동의 해제 시 아래 체크 항목 모두 해제됨
3. 아래 체크 항목이 모두 체크되면 전체 동의가 자동으로 체크됨
*/
$(document).ready(function() {
   $("#cbx_chkAll").click(function() {
      if($("#cbx_chkAll").is(":checked")) $("input[class=chk]").prop("checked", true);
      else $("input[class=chk]").prop("checked", false);
   });
   
   $("input[class=chk]").click(function() {
      var total = $("input[class=chk]").length;
      var checked = $("input[class=chk]:checked").length;
      
      if(total != checked) $("#cbx_chkAll").prop("checked", false);
      else $("#cbx_chkAll").prop("checked", true); 
   });
});

</script>

<!-- 휴대폰 번호 유효성 검사 -->


<!-- <script>
function Smscheck(){
   var objSMSNum = document.getElementById("SMSNum");
   if(objSMSNum.value=='') {
      alert("인증 번호를 작성해주세요.");
      objSMSNum.focus(); 
      return false;
   }
   var RegSMS = /^[0-9]{5}$/;
     if(!RegSMS.test(objSMSNum.value)) {
         alert("유효하지 않은 인증번호입니다.");
         objSMSNum.focus(); // input에 커서가 깜빡임
         return false;
      }
   
}
</script> -->

<script>
/* 유효성 검사 */ 
/* 미입력시 form 정보 전송 불가능 */
function Validation() {
  var objId = document.getElementById("id");
  var objPwd = document.getElementById("pwd");
  var objPwdCheck = document.getElementById("pwdCheck");
  var objUserName = document.getElementById("userName");
  var objGender_select = document.getElementById("gender_select");    
  var objSMSNum = document.getElementById("SMSNum");
  var objBirth = document.getElementById("birth");
  var objEmail = document.getElementById("email");
   
   if(objId.value=='') {
      alert("아이디를 입력해주세요.");
    objId.focus(); //아이디 input에 커서가 깜빡임
      return false;
   }
   var RegExp = /^[a-z0-9]{4,20}$/;
  if(!RegExp.test(objId.value)) {
      alert("아이디는 4~20자리 영문 소문자,숫자로만 입력해주세요");
     objId.focus(); //아이디 input에 커서가 깜빡임
      return false;
   }
   if(objPwd.value=='') {
      alert("비밀번호를 입력해주세요.");
    objPwd.focus(); //비밀번호 input에 커서가 깜빡임
      return false;
   }
   var reg = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*\W).{6,20}$/;
  if(!reg.test(objPwd.value)) {
      alert("비밀번호는 6-20자리 영문,숫자,특수문자 조합으로만 입력해주세요");
     objPwd.focus(); //비밀번호 input에 커서가 깜빡임
      return false;
   }
  if(objPwdCheck.value=='') {
      alert("비밀번호를 확인해주세요.");
    objPwdCheck.focus(); //비밀번호 확인 input에 커서가 깜빡임
      return false;
   }
   if(objPwdCheck.value!==objPwd.value) {
      alert("비밀번호가 틀립니다. 다시 입력해주세요.");
      return false;
   }
  if(objUserName.value=='') {
      alert("이름을 입력해주세요.");
    objUserName.focus(); //이름 input에 커서가 깜빡임
      return false;
   }
   var nameRegExp = /^[가-힣a-zA-Z]{2,20}$/;
   if(!nameRegExp.test(objUserName.value)) {
      alert("이름이 올바르지 않습니다. 다시 입력해주세요.");
      objUserName.focus(); //이름 input에 커서가 깜빡임
      return false;
   }
   if(objGender_select.value =='') {
    objGender_select.value=''; //미입력 시 null로 값 전송
      return true;
   }  
/*   
  if(objSMSNum.value=='') {
      alert("SMS 인증번호를 입력해주세요.");
    objSMSNum.value='';
      return false;
   }
   var RegSMS = /^[0-9]{6}$/;
  if(!RegSMS.test(objSMSNum.value)) {
      alert("SMS 인증번호 6자리 숫자로만 입력해주세요");
     objSMSNum.focus(); ///SMS 인증번호 input에 커서가 깜빡임
      return false;
   } */
  if(objBirth.value=='') {
    objBirth.value=''; //미입력 시 null로 값 전송
      return true;
   }
  if(objEmail.value=='') {  
    objEmail.value=''; //미입력 시 null로 값 전송
      return true;
   }
}
</script>

<script>
/* 필수 약관 동의 체크했을 때만 넘어감 */
function Validation() {
   var check_first = document.getElementById("required_check_first");
   var check_second = document.getElementById("required_check_second");
   var checkChoose = document.getElementById("check_choose");
   

   if(!check_first.checked) {
      alert("약관 동의를 체크해주세요.");
      check_first.focus();
      return false;
   }
   if(!check_second.checked) {
      alert("약관 동의를 체크해주세요.");
      check_second.focus();
      return false;
   }
   if(!checkChoose.checked) {
      alert("N");
      document.getElementById("check_choose").value = "N";      
   }
}
</script>

<!-- <script>
$(document).ready(function() {
   $("#check_choose").change(function(){
       if(this.checked){
         $(this).attr('value', 'Y');
         alert("Y");
       }else{
         $(this).attr('value', 'N');
         alert("N");
       }
     });
});
</script> -->
<!-- 아이디 id 유효성 검사(4-20자: 영문 소문자,숫자조합 조건 만족시 사용가능한 아이디) -->
<script>
   let userId = document.querySelector("#id")
   const idSuccess = document.querySelector('#id_success')
   userId.onkeyup = function() {
      if(isLength(userId.value) && isReg(userId.value)) {
         idSuccess.textContent = '사용가능한 아이디'
      } else {
         idSuccess.textContent = '4-20자: 영문 소문자,숫자조합으로 입력해주세요'
      }
   }
   function isLength(value) {
      return value.length >=4 && value.length <=20
   }
   function isReg(value) {
      let RegExp = /^[a-z0-9]{4,20}$/;
      if(RegExp.test(value) === true) {
         return true;
      } else {
         return false;
      }
   }
</script>   
<!-- 비밀번호 pwd 유효성 검사(6-20자:영문,숫자,특수문자조합 조건 만족시 사용가능한 비밀번호) -->
<script>
   var userPwd = document.querySelector("#pwd")
   const pwdSuccess = document.querySelector('#pwd_success')
   userPwd.onkeyup = function() {
      if( isLengthPwd(userPwd.value) && isRegPwd(userPwd.value)) {
         pwdSuccess.textContent = '사용가능한 비밀번호'
      } else {
         pwdSuccess.textContent = '6-20자:영문,숫자,특수문자조합으로 입력해주세요'
      }
   }
   function isLengthPwd(value) {
      return value.length >=6 && value.length <=20
   }
   function isRegPwd(value) {
      var reg = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*\W).{6,20}$/
      if(reg.test(value) === true) {
         return true
      } else {
         return false
      }
   }
</script>
<!-- 휴대폰 문자 인증  -->
<script>
	function opensms() {
		window.open("check/sendSms.do","휴대폰 인증","width=400,height=300,left=750,top=280");
		
	}
</script>
<!-- 비밀번호 일치 확인 검사 -->
<script>
   var userPwd = document.querySelector("#pwd")
   var userPwdCheck = document.querySelector("#pwdCheck")
   const pwdCheckSuccess = document.querySelector('#pwdCheck_')
   userPwdCheck.onkeyup = function() {
      if(userPwd.value == userPwdCheck.value) {
         pwdCheckSuccess.textContent = '비밀번호 일치'
      } else {
         pwdCheckSuccess.textContent = '비밀번호가 일치하지 않습니다'
      }
   }
</script>   
</body>
</html>