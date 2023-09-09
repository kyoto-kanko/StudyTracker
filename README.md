# StudyTracker
## テーブル構成
1. **users テーブル**: ユーザーの基本情報と認証データを保持します。
   - id: ユニークなユーザーID (主キー)
   - username: ユーザー名 (ユニーク)
   - password_hash: パスワードのハッシュ
   - created_at: アカウント作成日時
   - updated_at: アカウント更新日時

2. **study_sessions テーブル**: 勉強のセッションや記録を保持します。
   - id: ユニークなセッションID (主キー)
   - user_id: セッションを作成したユーザーのID (外部キー)
   - start_time: 勉強開始時刻
   - end_time: 勉強終了時刻
   - description: 勉強内容の詳細やメモ
   - created_at: セッション作成日時
   - updated_at: セッション更新日時

3. **resources テーブル**: 勉強に使用した資料やリソースの情報を保持します。
   - id: ユニークなリソースID (主キー)
   - name: リソース名 (例: 書籍名、ウェブサイト名など)
   - link: リソースへのリンク (オプション)
   - description: リソースの詳細
   - created_at: リソース作成日時
   - updated_at: リソース更新日時
