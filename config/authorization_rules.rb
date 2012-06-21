authorization do
  role :admin do
    has_permission_on [:users, :posts], :to => [:index, :show, :create, :destroy, :new, :edit, :update]
  end
  
  role :regular do
    has_permission_on :posts, :to => [:index, :show, :create, :new]
  end
end