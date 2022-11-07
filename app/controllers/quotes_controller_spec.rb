describe "POST #create" do
    context "with valid params" do
      it "creates a new item" do
        expect {
          post :create, { quote_id: quote.id, item: valid_item_attributes, format: :json  }
        }.to change(Item, :count).by(1)
      end

      it "assigns a newly created item as @item" do
        post :create, { quote_id: quote.id, item: valid_item_attributes, format: :json  }

        expect(assigns(:item)).to be_a(Item)
        expect(assigns(:item)).to be_persisted
      end
    end # "with valid params"

    context "with invalid params" do
      it "assigns a newly created but unsaved item as @item" do
        post :create, { quote_id: quote.id, item: invalid_item_attributes, format: :json  }

        expect(assigns(:item)).to be_a_new(Item)
      end

      it "returns unprocessable_entity status" do
        put :create, { quote_id: quote.id, item: invalid_item_attributes, format: :json }

        expect(response.status).to eq(422)
      end
    end # "with invalid params"
  end # "POST #create"