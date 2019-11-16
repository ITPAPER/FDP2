      $(function() {
         $("#ct11").click(function(e) {
            $.ajax({
               /** ajax 기본 옵션 */
               url: '../api/chart1.jsp',// 읽어들일 파일의 경로
   
               // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
               success: function(req) {
                  console.log(">> 성공!!!! >> " + req);
                  // 준비된 요소에게 읽어온 내용을 출력한다.
                  $("#dept").append(req);
               }
            });//end $.ajax
         }); // end #ct11 click
         
         $("#ct12").click(function(e) {
            $.ajax({
               /** ajax 기본 옵션 */
               url: '../api/chart2.jsp',// 읽어들일 파일의 경로
               
               // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
               success: function(req) {
                  console.log(">> 성공!!!! >> " + req);
                  // 준비된 요소에게 읽어온 내용을 출력한다.
                  $("#dept").append(req);
               }
            });
         }); // end #ct12 click
         
         $("#ct13").click(function(e) {
            $.ajax({
               /** ajax 기본 옵션 */
               url: '../api/chart3.jsp',// 읽어들일 파일의 경로
   
               // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
               success: function(req) {
                  console.log(">> 성공!!!! >> " + req);
                  // 준비된 요소에게 읽어온 내용을 출력한다.
                  $("#dept").append(req);
               },
               // 통신 실패시 호출될 함수 (파라미터는 에러내용)
               error: function(error) {
                  // 404 -> Page Not Found
                  // 50x -> Server Error(웹 프로그램 에러)
                  // 200, 0 -> 내용의 형식 에러(JSON,XML)
                  console.log(">> 에러!!!! >> " + error.status);
               }
            });
         }); // end #ct13 click
         
         $("#ct14").click(function(e) {
            $.ajax({
               /** ajax 기본 옵션 */
               url: '../api/chart4.jsp',// 읽어들일 파일의 경로
   
               // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
               success: function(req) {
                  console.log(">> 성공!!!! >> " + req);
                  // 준비된 요소에게 읽어온 내용을 출력한다.
                  $("#dept").append(req);
               }
            });
         }); // end #ct14 click
         
         $("#ct21").click(function(e) {
             $.ajax({
                /** ajax 기본 옵션 */
                url: '../api/chart1.jsp',// 읽어들일 파일의 경로
    
                // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                success: function(req) {
                   console.log(">> 성공!!!! >> " + req);
                   // 준비된 요소에게 읽어온 내용을 출력한다.
                   $("#dept").append(req);
                }
             });//end $.ajax
          }); // end #ct11 click
          
          $("#ct22").click(function(e) {
             $.ajax({
                /** ajax 기본 옵션 */
                url: '../api/chart2.jsp',// 읽어들일 파일의 경로
                
                // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                success: function(req) {
                   console.log(">> 성공!!!! >> " + req);
                   // 준비된 요소에게 읽어온 내용을 출력한다.
                   $("#dept").append(req);
                }
             });
          }); // end #ct12 click
          
          $("#ct23").click(function(e) {
             $.ajax({
                /** ajax 기본 옵션 */
                url: '../api/chart3.jsp',// 읽어들일 파일의 경로
    
                // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                success: function(req) {
                   console.log(">> 성공!!!! >> " + req);
                   // 준비된 요소에게 읽어온 내용을 출력한다.
                   $("#dept").append(req);
                },
                // 통신 실패시 호출될 함수 (파라미터는 에러내용)
                error: function(error) {
                   // 404 -> Page Not Found
                   // 50x -> Server Error(웹 프로그램 에러)
                   // 200, 0 -> 내용의 형식 에러(JSON,XML)
                   console.log(">> 에러!!!! >> " + error.status);
                }
             });
          }); // end #ct13 click
          
          $("#ct24").click(function(e) {
             $.ajax({
                /** ajax 기본 옵션 */
                url: '../api/chart4.jsp',// 읽어들일 파일의 경로
    
                // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                success: function(req) {
                   console.log(">> 성공!!!! >> " + req);
                   // 준비된 요소에게 읽어온 내용을 출력한다.
                   $("#dept").append(req);
                }
             });
          }); // end #ct14 click
          
          $("#ct31").click(function(e) {
              $.ajax({
                 /** ajax 기본 옵션 */
                 url: '../api/chart1.jsp',// 읽어들일 파일의 경로
     
                 // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                 success: function(req) {
                    console.log(">> 성공!!!! >> " + req);
                    // 준비된 요소에게 읽어온 내용을 출력한다.
                    $("#dept").append(req);
                 }
              });//end $.ajax
           }); // end #ct11 click
           
           $("#ct32").click(function(e) {
              $.ajax({
                 /** ajax 기본 옵션 */
                 url: '../api/chart2.jsp',// 읽어들일 파일의 경로
                 
                 // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                 success: function(req) {
                    console.log(">> 성공!!!! >> " + req);
                    // 준비된 요소에게 읽어온 내용을 출력한다.
                    $("#dept").append(req);
                 }
              });
           }); // end #ct12 click
           
           $("#ct33").click(function(e) {
              $.ajax({
                 /** ajax 기본 옵션 */
                 url: '../api/chart3.jsp',// 읽어들일 파일의 경로
     
                 // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                 success: function(req) {
                    console.log(">> 성공!!!! >> " + req);
                    // 준비된 요소에게 읽어온 내용을 출력한다.
                    $("#dept").append(req);
                 },
                 // 통신 실패시 호출될 함수 (파라미터는 에러내용)
                 error: function(error) {
                    // 404 -> Page Not Found
                    // 50x -> Server Error(웹 프로그램 에러)
                    // 200, 0 -> 내용의 형식 에러(JSON,XML)
                    console.log(">> 에러!!!! >> " + error.status);
                 }
              });
           }); // end #ct13 click
           
           $("#ct34").click(function(e) {
              $.ajax({
                 /** ajax 기본 옵션 */
                 url: '../api/chart4.jsp',// 읽어들일 파일의 경로
     
                 // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                 success: function(req) {
                    console.log(">> 성공!!!! >> " + req);
                    // 준비된 요소에게 읽어온 내용을 출력한다.
                    $("#dept").append(req);
                 }
              });
           }); // end #ct14 click
           
           $("#ct41").click(function(e) {
               $.ajax({
                  /** ajax 기본 옵션 */
                  url: '../api/chart1.jsp',// 읽어들일 파일의 경로
      
                  // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                  success: function(req) {
                     console.log(">> 성공!!!! >> " + req);
                     // 준비된 요소에게 읽어온 내용을 출력한다.
                     $("#dept").append(req);
                  }
               });//end $.ajax
            }); // end #ct11 click
            
            $("#ct42").click(function(e) {
               $.ajax({
                  /** ajax 기본 옵션 */
                  url: '../api/chart2.jsp',// 읽어들일 파일의 경로
                  
                  // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                  success: function(req) {
                     console.log(">> 성공!!!! >> " + req);
                     // 준비된 요소에게 읽어온 내용을 출력한다.
                     $("#dept").append(req);
                  }
               });
            }); // end #ct12 click
            
            $("#ct43").click(function(e) {
               $.ajax({
                  /** ajax 기본 옵션 */
                  url: '../api/chart3.jsp',// 읽어들일 파일의 경로
      
                  // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                  success: function(req) {
                     console.log(">> 성공!!!! >> " + req);
                     // 준비된 요소에게 읽어온 내용을 출력한다.
                     $("#dept").append(req);
                  },
                  // 통신 실패시 호출될 함수 (파라미터는 에러내용)
                  error: function(error) {
                     // 404 -> Page Not Found
                     // 50x -> Server Error(웹 프로그램 에러)
                     // 200, 0 -> 내용의 형식 에러(JSON,XML)
                     console.log(">> 에러!!!! >> " + error.status);
                  }
               });
            }); // end #ct13 click
            
            $("#ct44").click(function(e) {
               $.ajax({
                  /** ajax 기본 옵션 */
                  url: '../api/chart4.jsp',// 읽어들일 파일의 경로
      
                  // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                  success: function(req) {
                     console.log(">> 성공!!!! >> " + req);
                     // 준비된 요소에게 읽어온 내용을 출력한다.
                     $("#dept").append(req);
                  }
               });
            }); // end #ct14 click
            
            $("#ct51").click(function(e) {
                $.ajax({
                   /** ajax 기본 옵션 */
                   url: '../api/chart1.jsp',// 읽어들일 파일의 경로
       
                   // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                   success: function(req) {
                      console.log(">> 성공!!!! >> " + req);
                      // 준비된 요소에게 읽어온 내용을 출력한다.
                      $("#dept").append(req);
                   }
                });//end $.ajax
             }); // end #ct11 click
             
             $("#ct52").click(function(e) {
                $.ajax({
                   /** ajax 기본 옵션 */
                   url: '../api/chart2.jsp',// 읽어들일 파일의 경로
                   
                   // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                   success: function(req) {
                      console.log(">> 성공!!!! >> " + req);
                      // 준비된 요소에게 읽어온 내용을 출력한다.
                      $("#dept").append(req);
                   }
                });
             }); // end #ct12 click
             
             $("#ct53").click(function(e) {
                $.ajax({
                   /** ajax 기본 옵션 */
                   url: '../api/chart3.jsp',// 읽어들일 파일의 경로
       
                   // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                   success: function(req) {
                      console.log(">> 성공!!!! >> " + req);
                      // 준비된 요소에게 읽어온 내용을 출력한다.
                      $("#dept").append(req);
                   },
                   // 통신 실패시 호출될 함수 (파라미터는 에러내용)
                   error: function(error) {
                      // 404 -> Page Not Found
                      // 50x -> Server Error(웹 프로그램 에러)
                      // 200, 0 -> 내용의 형식 에러(JSON,XML)
                      console.log(">> 에러!!!! >> " + error.status);
                   }
                });
             }); // end #ct13 click
             
             $("#ct54").click(function(e) {
                $.ajax({
                   /** ajax 기본 옵션 */
                   url: '../api/chart4.jsp',// 읽어들일 파일의 경로
       
                   // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                   success: function(req) {
                      console.log(">> 성공!!!! >> " + req);
                      // 준비된 요소에게 읽어온 내용을 출력한다.
                      $("#dept").append(req);
                   }
                });
             }); // end #ct14 click
             
             $("#ct61").click(function(e) {
                 $.ajax({
                    /** ajax 기본 옵션 */
                    url: '../api/chart1.jsp',// 읽어들일 파일의 경로
        
                    // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                    success: function(req) {
                       console.log(">> 성공!!!! >> " + req);
                       // 준비된 요소에게 읽어온 내용을 출력한다.
                       $("#dept").append(req);
                    }
                 });//end $.ajax
              }); // end #ct11 click
              
              $("#ct62").click(function(e) {
                 $.ajax({
                    /** ajax 기본 옵션 */
                    url: '../api/chart2.jsp',// 읽어들일 파일의 경로
                    
                    // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                    success: function(req) {
                       console.log(">> 성공!!!! >> " + req);
                       // 준비된 요소에게 읽어온 내용을 출력한다.
                       $("#dept").append(req);
                    }
                 });
              }); // end #ct12 click
              
              $("#ct63").click(function(e) {
                 $.ajax({
                    /** ajax 기본 옵션 */
                    url: '../api/chart3.jsp',// 읽어들일 파일의 경로
        
                    // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                    success: function(req) {
                       console.log(">> 성공!!!! >> " + req);
                       // 준비된 요소에게 읽어온 내용을 출력한다.
                       $("#dept").append(req);
                    },
                    // 통신 실패시 호출될 함수 (파라미터는 에러내용)
                    error: function(error) {
                       // 404 -> Page Not Found
                       // 50x -> Server Error(웹 프로그램 에러)
                       // 200, 0 -> 내용의 형식 에러(JSON,XML)
                       console.log(">> 에러!!!! >> " + error.status);
                    }
                 });
              }); // end #ct13 click
              
              $("#ct64").click(function(e) {
                 $.ajax({
                    /** ajax 기본 옵션 */
                    url: '../api/chart4.jsp',// 읽어들일 파일의 경로
        
                    // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                    success: function(req) {
                       console.log(">> 성공!!!! >> " + req);
                       // 준비된 요소에게 읽어온 내용을 출력한다.
                       $("#dept").append(req);
                    }
                 });
              }); // end #ct14 click
              
              $("#ct71").click(function(e) {
                  $.ajax({
                     /** ajax 기본 옵션 */
                     url: '../api/chart1.jsp',// 읽어들일 파일의 경로
         
                     // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                     success: function(req) {
                        console.log(">> 성공!!!! >> " + req);
                        // 준비된 요소에게 읽어온 내용을 출력한다.
                        $("#dept").append(req);
                     }
                  });//end $.ajax
               }); // end #ct11 click
               
               $("#ct72").click(function(e) {
                  $.ajax({
                     /** ajax 기본 옵션 */
                     url: '../api/chart2.jsp',// 읽어들일 파일의 경로
                     
                     // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                     success: function(req) {
                        console.log(">> 성공!!!! >> " + req);
                        // 준비된 요소에게 읽어온 내용을 출력한다.
                        $("#dept").append(req);
                     }
                  });
               }); // end #ct12 click
               
               $("#ct73").click(function(e) {
                  $.ajax({
                     /** ajax 기본 옵션 */
                     url: '../api/chart3.jsp',// 읽어들일 파일의 경로
         
                     // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                     success: function(req) {
                        console.log(">> 성공!!!! >> " + req);
                        // 준비된 요소에게 읽어온 내용을 출력한다.
                        $("#dept").append(req);
                     },
                     // 통신 실패시 호출될 함수 (파라미터는 에러내용)
                     error: function(error) {
                        // 404 -> Page Not Found
                        // 50x -> Server Error(웹 프로그램 에러)
                        // 200, 0 -> 내용의 형식 에러(JSON,XML)
                        console.log(">> 에러!!!! >> " + error.status);
                     }
                  });
               }); // end #ct13 click
               
               $("#ct74").click(function(e) {
                  $.ajax({
                     /** ajax 기본 옵션 */
                     url: '../api/chart4.jsp',// 읽어들일 파일의 경로
         
                     // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                     success: function(req) {
                        console.log(">> 성공!!!! >> " + req);
                        // 준비된 요소에게 읽어온 내용을 출력한다.
                        $("#dept").append(req);
                     }
                  });
               }); // end #ct14 click
               
               $("#ct81").click(function(e) {
                   $.ajax({
                      /** ajax 기본 옵션 */
                      url: '../api/chart1.jsp',// 읽어들일 파일의 경로
          
                      // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                      success: function(req) {
                         console.log(">> 성공!!!! >> " + req);
                         // 준비된 요소에게 읽어온 내용을 출력한다.
                         $("#dept").append(req);
                      }
                   });//end $.ajax
                }); // end #ct11 click
                
                $("#ct82").click(function(e) {
                   $.ajax({
                      /** ajax 기본 옵션 */
                      url: '../api/chart2.jsp',// 읽어들일 파일의 경로
                      
                      // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                      success: function(req) {
                         console.log(">> 성공!!!! >> " + req);
                         // 준비된 요소에게 읽어온 내용을 출력한다.
                         $("#dept").append(req);
                      }
                   });
                }); // end #ct12 click
                
                $("#ct83").click(function(e) {
                   $.ajax({
                      /** ajax 기본 옵션 */
                      url: '../api/chart3.jsp',// 읽어들일 파일의 경로
          
                      // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                      success: function(req) {
                         console.log(">> 성공!!!! >> " + req);
                         // 준비된 요소에게 읽어온 내용을 출력한다.
                         $("#dept").append(req);
                      },
                      // 통신 실패시 호출될 함수 (파라미터는 에러내용)
                      error: function(error) {
                         // 404 -> Page Not Found
                         // 50x -> Server Error(웹 프로그램 에러)
                         // 200, 0 -> 내용의 형식 에러(JSON,XML)
                         console.log(">> 에러!!!! >> " + error.status);
                      }
                   });
                }); // end #ct13 click
                
                $("#ct84").click(function(e) {
                   $.ajax({
                      /** ajax 기본 옵션 */
                      url: '../api/chart4.jsp',// 읽어들일 파일의 경로
          
                      // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                      success: function(req) {
                         console.log(">> 성공!!!! >> " + req);
                         // 준비된 요소에게 읽어온 내용을 출력한다.
                         $("#dept").append(req);
                      }
                   });
                }); // end #ct14 click
                
                $("#ct91").click(function(e) {
                    $.ajax({
                       /** ajax 기본 옵션 */
                       url: '../api/chart1.jsp',// 읽어들일 파일의 경로
           
                       // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                       success: function(req) {
                          console.log(">> 성공!!!! >> " + req);
                          // 준비된 요소에게 읽어온 내용을 출력한다.
                          $("#dept").append(req);
                       }
                    });//end $.ajax
                 }); // end #ct11 click
                 
                 $("#ct92").click(function(e) {
                    $.ajax({
                       /** ajax 기본 옵션 */
                       url: '../api/chart2.jsp',// 읽어들일 파일의 경로
                       
                       // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                       success: function(req) {
                          console.log(">> 성공!!!! >> " + req);
                          // 준비된 요소에게 읽어온 내용을 출력한다.
                          $("#dept").append(req);
                       }
                    });
                 }); // end #ct12 click
                 
                 $("#ct93").click(function(e) {
                    $.ajax({
                       /** ajax 기본 옵션 */
                       url: '../api/chart3.jsp',// 읽어들일 파일의 경로
           
                       // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                       success: function(req) {
                          console.log(">> 성공!!!! >> " + req);
                          // 준비된 요소에게 읽어온 내용을 출력한다.
                          $("#dept").append(req);
                       },
                       // 통신 실패시 호출될 함수 (파라미터는 에러내용)
                       error: function(error) {
                          // 404 -> Page Not Found
                          // 50x -> Server Error(웹 프로그램 에러)
                          // 200, 0 -> 내용의 형식 에러(JSON,XML)
                          console.log(">> 에러!!!! >> " + error.status);
                       }
                    });
                 }); // end #ct13 click
                 
                 $("#ct94").click(function(e) {
                    $.ajax({
                       /** ajax 기본 옵션 */
                       url: '../api/chart4.jsp',// 읽어들일 파일의 경로
           
                       // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                       success: function(req) {
                          console.log(">> 성공!!!! >> " + req);
                          // 준비된 요소에게 읽어온 내용을 출력한다.
                          $("#dept").append(req);
                       }
                    });
                 }); // end #ct14 click
                 
                 $("#ct101").click(function(e) {
                     $.ajax({
                        /** ajax 기본 옵션 */
                        url: '../api/chart1.jsp',// 읽어들일 파일의 경로
            
                        // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                        success: function(req) {
                           console.log(">> 성공!!!! >> " + req);
                           // 준비된 요소에게 읽어온 내용을 출력한다.
                           $("#dept").append(req);
                        }
                     });//end $.ajax
                  }); // end #ct11 click
                  
                  $("#ct102").click(function(e) {
                     $.ajax({
                        /** ajax 기본 옵션 */
                        url: '../api/chart2.jsp',// 읽어들일 파일의 경로
                        
                        // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                        success: function(req) {
                           console.log(">> 성공!!!! >> " + req);
                           // 준비된 요소에게 읽어온 내용을 출력한다.
                           $("#dept").append(req);
                        }
                     });
                  }); // end #ct12 click
                  
                  $("#ct103").click(function(e) {
                     $.ajax({
                        /** ajax 기본 옵션 */
                        url: '../api/chart3.jsp',// 읽어들일 파일의 경로
            
                        // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                        success: function(req) {
                           console.log(">> 성공!!!! >> " + req);
                           // 준비된 요소에게 읽어온 내용을 출력한다.
                           $("#dept").append(req);
                        },
                        // 통신 실패시 호출될 함수 (파라미터는 에러내용)
                        error: function(error) {
                           // 404 -> Page Not Found
                           // 50x -> Server Error(웹 프로그램 에러)
                           // 200, 0 -> 내용의 형식 에러(JSON,XML)
                           console.log(">> 에러!!!! >> " + error.status);
                        }
                     });
                  }); // end #ct13 click
                  
                  $("#ct104").click(function(e) {
                     $.ajax({
                        /** ajax 기본 옵션 */
                        url: '../api/chart4.jsp',// 읽어들일 파일의 경로
            
                        // 통신 성공시 호출될 함수 (파라미터는 읽어온 내용)
                        success: function(req) {
                           console.log(">> 성공!!!! >> " + req);
                           // 준비된 요소에게 읽어온 내용을 출력한다.
                           $("#dept").append(req);
                        }
                     });
                  }); // end #ct14 click
      });