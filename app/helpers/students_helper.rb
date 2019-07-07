module StudentsHelper
    def checked(area)
        @student.day.nil? ? false : @student.day.match(area)
      end

      def calcularsala(attrib)
        l1 = 0
       
             
               
      
        return l1
        # attrib.each do |s|
        #     if s == "laranja1(2-4)"
        #         l1=l1+1
        #     elsif s == "laranja2(2-4)"
        #         l1=l1+1   
        #     elsif s == "roxo1(5-6)"
        #         l1=l1+1
        #     elsif s == "roxo1(5-6)"  
        #         l1=l1+1
        #     elsif s == 'verde1(7-8)'
        #         l1=l1+1
        #     elsif s == 'verde2(7-8)'
        #         l1=l1+1
        #     elsif s =='amarelo1(9-10)'
        #         l1=l1+1
        #     elsif s =='amarelo2(9-10)'
        #         l1=l1+1
        #     elsif s =='azul(11-12)'
        #         l1=l1+1
        #     elsif s == 'vermelho(13-14)'
        #         l1=l1+1
        #     else
        #     end
        # end
        # l1
    end 
end
