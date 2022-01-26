<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 동아리+게시글 등록 -->
<%@ include file="/WEB-INF/views/header.jsp" %>

<!-- ---------------------------------------------------------------------------------------------------------------------- -->


<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">

<!-- Main Content -->
		<div id="content">

<!-- ---------------------------------------------------------------------------------------------------------------------- -->
<!-- Topbar -->
		<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
		<h4>3조대학교 캠퍼스픽</h4>


<!-- Sidebar Toggle (Topbar) -->
		<button id="sidebarToggleTop"
				class="btn btn-link d-md-none rounded-circle mr-3">
			<i class="fa fa-bars"></i>
		</button>

<!-- Topbar Search -->
	<!-- 
		<form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
			<div class="input-group">
				<input type="text" class="form-control bg-light border-0 small"
					   placeholder="Search for..." aria-label="Search"
				       aria-describedby="basic-addon2">
				<div class="input-group-append">
					<button class="btn btn-primary" type="button">
						<i class="fas fa-search fa-sm"></i>
					</button>
				</div>
			</div>
		</form>
	 -->
	 
<!-- Topbar Navbar -->
		<ul class="navbar-nav ml-auto">

		<div class="topbar-divider d-none d-sm-block"></div>

<!-- Nav Item - User Information -->
			<li class="nav-item dropdown no-arrow">
				<a class="nav-link dropdown-toggle" href="#" id="userDropdown"
				   role="button" data-toggle="dropdown" aria-haspopup="true"
				   aria-expanded="false">
					<span class="mr-2 d-none d-lg-inline text-gray-600 small">홍길동님</span>
					<img class="img-profile rounded-circle"
						 src="${ pageContext.request.contextPath }/resources/img/undraw_profile.svg">
				</a>

<!-- Dropdown - User Information -->
				<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
					 aria-labelledby="userDropdown">
					<a class="dropdown-item" href="#">
						<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> 프로필
					</a>
					<a class="dropdown-item" href="#">
						<i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> 수정
					</a>
					<a class="dropdown-item" href="#"> 
						<i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> 활동기록
					</a>
					
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#" data-toggle="modal"
					   data-target="#logoutModal">
						<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i> 로그아웃
					</a>
				</div>
			</li>

		</ul>

		</nav>
<!-- End of Topbar -->

<!-- ---------------------------------------------------------------------------------------------------------------------- -->

<!-- Begin Page Content -->
		<form action="circle/CircleInsert" method="post">
		<div class="container-fluid">

<!-- Page Heading -->
			<div class="d-sm-flex align-items-center justify-content-between mb-4">
				<h1 class="h3 mb-0 text-gray-800"> 동아리 게시요청 </h1>
					
			</div>


			<!-- 동아리 게시요청 주의사항 카드 -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h5 class="m-0 font-weight-bold text-danger"> 동아리 게시 유의사항 </h5>
				</div>
				
				<div class="card-body">
					<ul>
						<li> 동아리 정보 및 모집 공고 게시는 무료로 진행되며, 
							 3조픽 담당자의 검토 및 승인 절차를 거쳐 48시간 이내 게시됩니다 </li>
						<li> 계정당 한 동아리만 등록 가능합니다 </li>
						<li> 게시글 중복 방지를 위해 동아리당 한 게시글만 등록할 수 있습니다 </li>
					</ul>	
				</div>
			</div>
<!-- Content Row -->
			<!-- <div class="row"> -->

<!-- Content Column -->
			<!-- <div class="col-lg-6 mb-4"> -->

<!-- Approach -->
				<!-- 동아리 만들기 카드 -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h5 class="m-0 font-weight-bold text-dark"> 동아리 정보 등록 </h5>
					</div>
					1. 동아리 검색
					2. 분야 선택 (학술/취업/봉사/기타친목)
					3. 규모 (10/20/30명 이하)
					4. 사진 업로드
					
					<div class="card-body">
						
						<!-- 1. 동아리 검색 버튼 -->
						<div class="card mb-3">
							<div class="col-md-8">
								<div class="card-body">
									<h6 class="card-title font-weight-bold text-dark">동아리명</h6>
									<p class="card-text">
										<!-- 동아리명 입력 -->
										<input type="text">
										<!-- 동아리명 중복 or 사용가능 여부 메세지 -->
										<div>
										</div>
									</p>
								</div>
								
							</div>
						</div>
						
						<!-- 2. 분야 선택 (학술/취업/봉사/기타) -->
						<div class="card mb-3">
							<div class="col-md-8">
							
								<div class="card-body">
									<h6 class="card-title font-weight-bold text-dark">동아리 분야</h6>
									<p class="card-text">
										<input type="radio" name="radioC1" value="학술">학술
										<input type="radio" name="radioC1" value="취업">취업
										<input type="radio" name="radioC1" value="봉사">봉사
										<input type="radio" name="radioC1" value="기타">기타		
									</p>
								</div>
								
							</div>
						</div>
						
						<!-- 3. 규모 (10/20/30명 이하) -->
						<div class="card mb-3">
							<div class="col-md-8">
							
								<div class="card-body">
									<h6 class="card-title font-weight-bold text-dark">동아리 규모</h6>
									<p class="card-text">
										<input type="radio" name="radioC2" value="10">10명 이하
										<input type="radio" name="radioC2" value="20">11명 ~ 20명 이하
										<input type="radio" name="radioC2" value="30">21명 ~ 30명 이하
									</p>
								</div>
								
							</div>
						</div>
						
						<!-- 4. 사진 업로드 -->
						<div class="card mb-3">
							<div class="col-md-8">
							
								<div class="card-body">
									<h6 class="card-title font-weight-bold text-dark">동아리 이미지 업로드</h6>
									<p class="card-text">
									</p>
								</div>
								
							</div>
						</div>
						
					</div>
				</div>
			<!-- </div>  -->

<!-- Approach -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h5 class="m-0 font-weight-bold text-dark"> 모집 공고 등록 </h5>
					</div>
					1. 글제목
					2. 모집 기간
					3. 상세 내용
					4. 이미지 첨부
					
					<div class="card-body">
					
						<!-- 1. 게시글 제목 -->
						<div class="card mb-3">
							<div class="col-md-8">
							
								<div class="card-body">
									<h6 class="card-title font-weight-bold text-dark">글 제목</h6>
									<p class="card-text">
										<input type="text">
									</p>
								</div>
								
							</div>
						</div>
						
						<!-- 2. 모집 기간 -->
						<div class="card mb-3">
							<div class="col-md-8">
							
								<div class="card-body">
									<h6 class="card-title font-weight-bold text-dark">모집 기간</h6>
									<p class="card-text">
										<!-- 달력!!! 시작일, 마감일 -->
									</p>
								</div>
								
							</div>
						</div>
						
						<!-- 3. 상세 내용 -->
						<div class="card mb-3">
							<div class="col-md-8">
							
								<div class="card-body">
									<h6 class="card-title font-weight-bold text-dark">상세 내용</h6>
									<p class="card-text">
										<textarea rows="15" cols="100"></textarea> <!-- ??크기조절이... -->
									</p>
								</div>
								
							</div>
						</div>
						
						<!-- 4. 이미지 첨부 -->
						<div class="card mb-3">
							<div class="col-md-8">
							
								<div class="card-body">
									<h6 class="card-title font-weight-bold text-dark">이미지 첨부</h6>
									<p class="card-text">
									</p>
								</div>
								
							</div>
						</div>
						
					</div>
				</div>
			</div>
			
			<input type="submit" value="동아리 게시글 등록">
			</form>
		</div>
		
<!-- /.container-fluid -->
			
		</div>
		
<!-- End of Main Content -->

<!-- Footer -->
<%@ include file="/WEB-INF/views/footer.jsp" %>
<!-- End of Footer -->

	<!--  </div> -->
<!-- End of Content Wrapper -->

	<!-- </div>  -->
<!-- End of Page Wrapper -->
		
<!-- ---------------------------------------------------------------------------------------------------------------------- -->
		
<!-- 스크롤 -->		
<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top">
		<i class="fas fa-angle-up"></i>
	</a>

<!-- 로그아웃 -->
<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		 aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까?</h5>
					<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				
				<div class="modal-body">로그아웃하시려면 '로그아웃' 버튼을 눌러주세요.</div>
					
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
							data-dismiss="modal">취소
					</button>
					<a class="btn btn-primary" href="login.html">로그아웃</a>
				</div>
			</div>
		</div>
	</div>
	