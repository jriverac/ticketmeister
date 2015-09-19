class JirasController < ApplicationController
  before_action :set_jira, only: [:show, :edit, :update, :destroy]

  # GET /jiras
  # GET /jiras.json
  def index
    @jiras = Jira.all
  end

  # GET /jiras/1
  # GET /jiras/1.json
  def show
  end

  # GET /jiras/new
  def new
    @jira = Jira.new
  end

  # GET /jiras/1/edit
  def edit
  end

  # POST /jiras
  # POST /jiras.json
  def create
    @jira = Jira.new(jira_params)

    respond_to do |format|
      if @jira.save
        format.html { redirect_to @jira, notice: 'Jira was successfully created.' }
        format.json { render :show, status: :created, location: @jira }
      else
        format.html { render :new }
        format.json { render json: @jira.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jiras/1
  # PATCH/PUT /jiras/1.json
  def update
    respond_to do |format|
      if @jira.update(jira_params)
        format.html { redirect_to @jira, notice: 'Jira was successfully updated.' }
        format.json { render :show, status: :ok, location: @jira }
      else
        format.html { render :edit }
        format.json { render json: @jira.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jiras/1
  # DELETE /jiras/1.json
  def destroy
    @jira.destroy
    respond_to do |format|
      format.html { redirect_to jiras_url, notice: 'Jira was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jira
      @jira = Jira.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jira_params
      params.require(:jira).permit(:ticket_id, :key, :sumary, :issue_type, :status, :priority, :resolution, :reporter, :created, :description, :date_of_first_response, :sales_priority, :acceptance_criteria)
    end
end
