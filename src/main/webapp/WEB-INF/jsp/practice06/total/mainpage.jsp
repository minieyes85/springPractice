<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>practice06</title>
        <meta charset="utf-8">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>


        <link rel="stylesheet" href="/resources/static/css/styleForTotal.css" type="text/css">

    </head>

    <body>

        <div id="wrap" class="container">
            <header class=" text-center">
                통나무 펜션
            </header>

            <nav>
                <ul class="nav nav-fill">
                    <li class="nav-item"><a class="nav-link" href="#">펜션소개</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">객실보기</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">예약안내</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">커뮤니티</a></li>
                </ul>

            </nav>

            <section id="imgPanel">
                <img id="img" src="/resources/static/img/pension/test06_banner1.jpg" alt="">

            </section>

            <article class="d-flex">
                <div id="title" class="d-flex justify-content-center">
                    <span id="titleText" class="m-5">
                        실시간 <br>
                        예약하기
                    </span>

                </div>

                <div id="bookCheck">
                    <div>
                        <div class="d-flex align-items-end mt-3 ml-4">
                            <div id="bookCheckTitle" class="mb-2">
                                예약확인
                            </div>
                            <div id="isMemberRadio" class="d-flex">
                                <div class="ml-3">
                                    <label>회원<input type="radio" name="isMember" value="member" checked></label>
                                </div>
                                <div class="ml-3">
                                    <label>비 회원<input type="radio" name="isMember" value="notMember"></label>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div id="bookCheckInputPanel" class=" mt-2">
                        <div id="memberPanel" class="">
                            <div class="d-flex">
                                <div class="inputKeys ml-3 mt-1 text-center">
                                    아이디
                                </div>
                                <div class="inputValues">
                                    <div class="input-group input-group-sm mb-2">
                                        <input type="text" class="form-control" id="inputId">
                                    </div>
                                </div>
                            </div>

                            <div class="d-flex mt-1">
                                <div class="inputKeys ml-3 mt-1 text-center">
                                    비밀번호
                                </div>
                                <div class="inputValues">
                                    <div class="input-group input-group-sm mb-2">
                                        <input type="password" class="form-control" id="inputPw">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="notMemberPanel" class="d-none">
                            <div class="d-flex">
                                <div class="inputKeys ml-3 mt-1 text-center">
                                    이름
                                </div>
                                <div class="inputValues">
                                    <div class="input-group input-group-sm mb-2">
                                        <input type="text" class="form-control" id="name">
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex">
                                <div class="inputKeys ml-3 mt-1 text-center">
                                    전화번호
                                </div>
                                <div class="inputValues">
                                    <div class="input-group input-group-sm mb-2">
                                        <input type="text" class="form-control" id="phoneNumber">
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex">
                                <div class="inputKeys ml-3 mt-1 text-center">
                                    날짜
                                </div>
                                <div class="inputValues">
                                    <div class="input-group input-group-sm mb-2">
                                        <input type="text" class="form-control" id="date">
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="d-flex justify-content-end mt-3 mr-5">
                        <div id="buttonPanel">
                            <button type="button" class="btn btn-success" id="button">조회 하기</button>
                        </div>

                    </div>
                </div>

                <div id="contact" class="d-flex justify-content-center">
                    <div class="m-5">
                        <div id="contactTitle">
                            예약문의:
                        </div>    
                        <div id="contactNumber">
                            010- <br>
                            000-1111
                        </div>
                    </div>
                </div>

            </article>

            <footer>
                <div id="companyInfo" class="text-muted p-3">
                    제주특별자치도 제주시 애월읍 <br>
                    사업자등록번호: 111-22-333333 / 농어촌민박사업자지정 / 대표 : 최준선 <br>
                    Copyright 2021 tongnamu All Right Reserved.
                </div>

            </footer>

        </div>

        <script>

            $(document).ready(function(){

                $.datepicker.setDefaults({
                    dateFormat: 'yy-mm-dd',
                    prevText: '이전 달',
                    nextText: '다음 달',
                    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
                    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
                    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
                    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
                    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
                    showMonthAfterYear: true,
                    yearSuffix: '년'
                });

                $.datepicker._gotoToday = function(id) {
                    $(id).datepicker('setDate', new Date()).datepicker('hide').blur();
                };

                var imgs = ["test06_banner1.jpg" , "test06_banner2.jpg" , "test06_banner3.jpg" , "test06_banner4.jpg"]
                var imgIndex = 0;
                /*
                setInterval(function(){
                    $("#img").attr("src","/resources/static/img/"+imgs[imgIndex]);
                    imgIndex++;
                    if(imgIndex == 4){
                        imgIndex -= 4;
                    }
                }, 3000);
				*/

                $("input[name='isMember']").on("change",function(){
                    if($("input[name='isMember']:checked").val() == "notMember"){
                        $("#notMemberPanel").removeClass("d-none");
                        $("#memberPanel").addClass("d-none");
                    }

                    if($("input[name='isMember']:checked").val() == "member"){                        
                        $("#memberPanel").removeClass("d-none");
                        $("#notMemberPanel").addClass("d-none");
                    }
                });

                $("#date").datepicker({
                    showButtonPanel: true,
                    currentText:"오늘",
                    closeText: "선택",
                    minDate:0
                });

                $("#button").on("click",function(){
                    if($("input[name='isMember']:checked").val() == "member"){
                        let id = $("#inputId").val();
                        let pw = $("#inputPw").val();
                        if(id == ""){
                            alert("아이디를 입력해주세요.")
                            return;
                        }
                        if(pw == ""){
                            alert("비밀번호를 입력해주세요.")
                            return;
                        }
                        if(id != "" && pw != ""){
                            alert(id + "님의 예약 정보를 조회 합니다.");
                        }                        
                    } 
                    
                    if($("input[name='isMember']:checked").val() == "notMember"){
                        let name = $("#name").val();
                        let phoneNumber = $("#phoneNumber").val();
                        let date = $("#date").val();

                        if(name == ""){
                            alert("이름을 입력 하세요.")
                            return;
                        }

                        if(phoneNumber == ""){
                            alert("전화번호를 입력 하세요.")
                            return;
                        } else if(phoneNumber.slice(0,3) != "010"){
                            alert("010 으로 시작하는 번호만 입력 가능합니다.");
                            return;
                        }
                        if(date == ""){
                            alert("예약을 확인할 날짜를 입력하세요.")
                            return;
                        }

                        alert("이름 : " + name + "\n" +
                              "전화번호 : " + phoneNumber + "\n" +
                              "예약날짜 : " + date + "\n" +
                              "위의 예약 정보를 조회 합니다.");
                    }

                });

                
            });

            




        </script>
    </body>
</html>