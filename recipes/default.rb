package ['gcc', 'python-dev', 'postgresql-server-dev-9.3', 'postgresql-common', 'python-setuptools'] do
  action :install
end

remote_file '/tmp/multicorn-1.2.4.zip' do
  source 'http://api.pgxn.org/dist/multicorn/1.2.4/multicorn-1.2.4.zip'
  action :create_if_missing
  notifies :run, 'bash[install_multicorn]', :immediately
end

bash 'install_multicorn' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
    rm -rf multicorn-1.2.4
    unzip multicorn-1.2.4.zip
    (cd multicorn-1.2.4 && make && make install)
  EOH
  action :run
end
