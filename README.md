## Docker application home page (in this page you can see your running container)
![WhatsApp Image 2020-12-18 at 9 25 36 PM](https://user-images.githubusercontent.com/61894395/102634363-bcd63280-4177-11eb-8cb6-f6edee494349.jpeg)

![WhatsApp Image 2020-12-18 at 9 25 36 PM (1)](https://user-images.githubusercontent.com/61894395/102634365-be075f80-4177-11eb-9fe4-0623b982d240.jpeg)
![WhatsApp Image 2020-12-18 at 9 25 36 PM (2)](https://user-images.githubusercontent.com/61894395/102634367-be9ff600-4177-11eb-8552-50a6e63a1360.jpeg)
# docker api routes for different different commands





- __route("/")==> index__
  

-  __route("/images")==> list_images__
    


- __route("/containers")==> list_containers__
   


- __route("/container/stats")==> container_stats__
   

- __route("/container/run")==> run_container__

    arguments:
    
        name: String
        
        image: String
        
        version: String optional [ default: latest ]


- __route("/networks")==> container_networks__
   

- __route("/network/create")==> container_network_create__

  arguments:
  
      name: String
      
      driver_name: String optional [ default: 'bridge' ]
    


- __oute("/volumes")==> container_volumes__



- __route("/volume/create")==> container_volume_create__

  arguments:
  
      name: String
      
      driver_name: String optional [ default: 'local' ]




- __route("/image/search")==> image_search__

  arguments:
  
      name: String

  
    
- __route("/container/stop")==> container_stop__

  arguments:
  
      name: String
    
    
    
- __route("/container/remove")==> container_remove__

  arguments:
  
      name: String
    
    
- __route("/container/remove/all")==> container_remove_all__



 for example: 
 
 http://IP:5000/containers : to list all running containers
 
 http://IP:5000/container/run?name=my-con&image=centos : with argument to run the my-con container from centos image

