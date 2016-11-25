describe 'Articles Index' do
  it 'responds with some JSON' do
    get '/articles'
    expect(last_response.status).to eq(200)
    expect(last_response.content_type).to eq('application/json')
  end

  it 'responds with an article' do
    get '/articles'
    article_one = { 'id' => 'abc', 'title' => 'who' }
    expect(parsed(last_response.body)).to eq('articles' => [article_one])
  end

  def parsed(body)
    JSON.parse body
  end
end
