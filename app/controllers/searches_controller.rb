class SearchesController < HousesController


          def search
            input = params[:house][:prefecture_id].to_i

            if input == 0
              @houses = House.where(prefecture_id:0).page(params[:page]).per(5).order('created_at DESC')
              @house = House.find_by(prefecture_id:0)

            elsif input == 1 || input == 2 || input == 3 || input  == 4 || input == 5 || input == 6
              @houses = House.where(prefecture_id:[1,2,3,4,5,6]).page(params[:page]).per(5).order('created_at DESC')
              @house = House.find_by(prefecture_id:1)

            elsif input == 7 || input == 8 || input == 9 || input  == 11 || input == 12 || input == 13
              @houses = House.where(prefecture_id:[7,8,9,10,11,12,13]).page(params[:page]).per(5).order('created_at DESC')

              @house = House.find_by(prefecture_id:7)

            elsif input == 14 || input == 15 || input == 16 || input  == 17 || input == 18 || input == 19 || input == 20 || input == 21 || input == 22
              @houses = House.where(prefecture_id:[14,15,16,17,18,19,20,21,22]).page(params[:page]).per(5).order('created_at DESC')

              @house = House.find_by(prefecture_id:14)

            elsif input == 23 || input == 24 || input  == 25 || input == 26 || input == 27 || input == 28 || input  == 29
              @houses = House.where(prefecture_id:[23,24,25,26,27,28,29]).page(params[:page]).per(5).order('created_at DESC')

              @house = House.find_by(prefecture_id:23)

            elsif input == 30 || input == 31 || input == 32 || input  == 33 || input  == 34
              @houses = House.where(prefecture_id:[30,31,32,33,34]).page(params[:page]).per(5).order('created_at DESC')

              @house = House.find_by(prefecture_id:30)

            elsif input == 35 || input == 36 || input == 37 || input  == 38
              @houses = House.where(prefecture_id:[35,36,37,38]).page(params[:page]).per(5).order('created_at DESC')

              @house = House.find_by(prefecture_id:35)

            elsif input == 39 || input == 40 || input == 41 || input  == 42 || input == 43 || input == 44 || input  == 45 || input  == 46
              @houses = House.where(prefecture_id:[39,40,41,42,43,44,45,46]).page(params[:page]).per(5).order('created_at DESC')

              @house = House.find_by(prefecture_id:39)

            end

        end
end
