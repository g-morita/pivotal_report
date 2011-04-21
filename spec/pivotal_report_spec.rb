# -*- coding: utf-8 -*-
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

VALID_TOKEN = ""
INVALID_TOKEN = "invalid"
PROJECT_ID = "48633"

describe "PivotalReport" do

  context "起動前" do
    it "正しいAPIトークンを受け取ると接続に成功する" do
      reporter = PivotalReporter.new(VALID_TOKEN, PROJECT_ID)
      reporter.connected.should be_true
    end
    it "間違ったトークンを受け取ると接続に失敗する" do
      pending "一度トークンをセットすると接続をリセットできない"

      reporter = PivotalReporter.new(INVALID_TOKEN, PROJECT_ID)
      reporter.connected.should be_false
    end
  end

  context "正しいownerとトークンを受け取り、起動に成功している" do
    it "指定したownerのfinished, delivered, acceptedなストーリーを取得して標準出力に表示する" do
      pending "実装中"
      reporter = PivotalReporter.new(VALID_TOKEN, PROJECT_ID)
      reporter.connected.should be_true
      stories = reporter.finished_stories
      stories.length.should == 5

      # 中身の検証
    end
  end
end
