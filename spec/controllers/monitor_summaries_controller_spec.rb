require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MonitorSummariesController do

  # This should return the minimal set of attributes required to create a valid
  # MonitorSummary. As you add validations to MonitorSummary, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MonitorSummariesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all monitor_summaries as @monitor_summaries" do
      monitor_summary = MonitorSummary.create! valid_attributes
      get :index, {}, valid_session
      assigns(:monitor_summaries).should eq([monitor_summary])
    end
  end

  describe "GET show" do
    it "assigns the requested monitor_summary as @monitor_summary" do
      monitor_summary = MonitorSummary.create! valid_attributes
      get :show, {:id => monitor_summary.to_param}, valid_session
      assigns(:monitor_summary).should eq(monitor_summary)
    end
  end

  describe "GET new" do
    it "assigns a new monitor_summary as @monitor_summary" do
      get :new, {}, valid_session
      assigns(:monitor_summary).should be_a_new(MonitorSummary)
    end
  end

  describe "GET edit" do
    it "assigns the requested monitor_summary as @monitor_summary" do
      monitor_summary = MonitorSummary.create! valid_attributes
      get :edit, {:id => monitor_summary.to_param}, valid_session
      assigns(:monitor_summary).should eq(monitor_summary)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new MonitorSummary" do
        expect {
          post :create, {:monitor_summary => valid_attributes}, valid_session
        }.to change(MonitorSummary, :count).by(1)
      end

      it "assigns a newly created monitor_summary as @monitor_summary" do
        post :create, {:monitor_summary => valid_attributes}, valid_session
        assigns(:monitor_summary).should be_a(MonitorSummary)
        assigns(:monitor_summary).should be_persisted
      end

      it "redirects to the created monitor_summary" do
        post :create, {:monitor_summary => valid_attributes}, valid_session
        response.should redirect_to(MonitorSummary.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved monitor_summary as @monitor_summary" do
        # Trigger the behavior that occurs when invalid params are submitted
        MonitorSummary.any_instance.stub(:save).and_return(false)
        post :create, {:monitor_summary => {}}, valid_session
        assigns(:monitor_summary).should be_a_new(MonitorSummary)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        MonitorSummary.any_instance.stub(:save).and_return(false)
        post :create, {:monitor_summary => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested monitor_summary" do
        monitor_summary = MonitorSummary.create! valid_attributes
        # Assuming there are no other monitor_summaries in the database, this
        # specifies that the MonitorSummary created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        MonitorSummary.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => monitor_summary.to_param, :monitor_summary => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested monitor_summary as @monitor_summary" do
        monitor_summary = MonitorSummary.create! valid_attributes
        put :update, {:id => monitor_summary.to_param, :monitor_summary => valid_attributes}, valid_session
        assigns(:monitor_summary).should eq(monitor_summary)
      end

      it "redirects to the monitor_summary" do
        monitor_summary = MonitorSummary.create! valid_attributes
        put :update, {:id => monitor_summary.to_param, :monitor_summary => valid_attributes}, valid_session
        response.should redirect_to(monitor_summary)
      end
    end

    describe "with invalid params" do
      it "assigns the monitor_summary as @monitor_summary" do
        monitor_summary = MonitorSummary.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MonitorSummary.any_instance.stub(:save).and_return(false)
        put :update, {:id => monitor_summary.to_param, :monitor_summary => {}}, valid_session
        assigns(:monitor_summary).should eq(monitor_summary)
      end

      it "re-renders the 'edit' template" do
        monitor_summary = MonitorSummary.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MonitorSummary.any_instance.stub(:save).and_return(false)
        put :update, {:id => monitor_summary.to_param, :monitor_summary => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested monitor_summary" do
      monitor_summary = MonitorSummary.create! valid_attributes
      expect {
        delete :destroy, {:id => monitor_summary.to_param}, valid_session
      }.to change(MonitorSummary, :count).by(-1)
    end

    it "redirects to the monitor_summaries list" do
      monitor_summary = MonitorSummary.create! valid_attributes
      delete :destroy, {:id => monitor_summary.to_param}, valid_session
      response.should redirect_to(monitor_summaries_url)
    end
  end

end
