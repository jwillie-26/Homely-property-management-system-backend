class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # set a header in the HTTP response to allow cross-origin resource sharing
  before do
    response.headers["Access-Control-Allow-Origin"] = "*"
  end

  # define  an endpoint for handling HTTP OPTIONS requests
  options "*" do
    response.headers["Access-Control-Allow-Methods"] = "GET, POST, PUT, PATCH, DELETE, OPTIONS"
  end
  
  # Add your routes here

  get "/" do
    { message: "Property_Management_Application" }.to_json
  end

  # get all landlords
  get "/landlords" do
    Landlord.all.to_json
  end

  # get all properties
  get "/properties" do
    Property.all.to_json
  end

  # get a properties
  get "/properties/:id" do
    properties = Property.find(params[:id])
    properties.to_json
  end

  # get property count
  get "/total properties" do
    Property.all.count.to_json
  end

  # get active users
  get "/active tenants" do
    Tenant.all.count.to_json
  end

  # get monthly rent
  get "/month rent" do
    sum = Tenant.sum(:rent)
    sum.to_json
  end

  # get all tenants
  get "/tenants" do
    Tenant.all.to_json
  end

  # creating property
  post "/property" do
    property = Property.create(
      location: params[:location],
      property_type: params[:property_type],
      property_name: params[:property_name],
      property_size: params[:property_size],
      landlord_id: params[:landlord_id],
    )
    property.to_json
  end

  # creating tenant
  post "/tenant" do
    tenant = Tenant.create(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
      rent: params[:rent],
    )
    tenant.to_json
  end

  # patch tenant requests
  patch "/tenant/:id" do
    tenant = Tenant.find(params[:id])
    tenant.update(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
      property_id: params[:property_id],
    )
    tenant.to_json
  end

  # updating property
  patch "/properties/:id" do
    property = Property.find(params[:id])
    property.update(
      location: params[:location],
      property_type: params[:property_type],
      property_name: params[:property_name],
      property_size: params[:property_size],
      landlord_id: params[:landlord_id]
    )
    property.to_json
  end

  #delete requests 
  
  delete "/tenant/:id" do
    tenant = Tenant.find(params[:id])
    tenant.destroy
  end

  delete "/property/:id" do
    property = Property.find(params[:id])
    property.destroy
  end

end