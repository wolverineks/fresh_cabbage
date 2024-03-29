RSpec.describe ReviewsController, type: :controller do

  let(:review) { FactoryGirl.create(:review) }

  describe "GET #show" do
    xit "assigns the requested review as @review" do
      get :show, {:id => review.to_param}
      expect(assigns(:review)).to eq(review)
    end
  end

  describe "GET #new" do
    xit "assigns a new review as @review" do
      get :new, {}
      expect(assigns(:review)).to be_a_new(Review)
    end
  end

  describe "GET #edit" do
    xit "assigns the requested review as @review" do
      get :edit, {:id => review.to_param}
      expect(assigns(:review)).to eq(review)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      xit "creates a new Review" do
        expect {
          post :create, review
        }.to change(Review, :count).by(1)
      end

      xit "assigns a newly created review as @review" do
        post :create, review
        expect(assigns(:review)).to be_a(Review)
        expect(assigns(:review)).to be_persisted
      end

      xit "redirects to the created review" do
        post :create, review
        expect(response).to redirect_to(Review.last)
      end
    end

    context "with invalid params" do
      xit "assigns a newly created but unsaved review as @review" do
        review.title = ""
        post :create, review
        expect(assigns(:review)).to be_a_new(Review)
      end

      xit "re-renders the 'new' template" do
        review.title = ""
        post :create, review
        expect(response).to render_template("new")
      end
    end
  end

  describe "DELETE #destroy" do
    xit "destroys the requested review" do
      expect {
        delete :destroy, {:id => review.to_param}
      }.to change(Review, :count).by(-1)
    end

    xit "redirects to the reviews list" do
      delete :destroy, {:id => review.to_param}
      expect(response).to redirect_to(reviews_url)
    end
  end

end
