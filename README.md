# 構造科学的周期表シミュレーター (Periodic Structure Simulator)

### 🚀 概要
本プロジェクトは、単なる元素情報の羅列ではなく、「構造科学」および「ロジスティクス工学」の視点から元素特性を再定義・可視化するためのウェブアプリケーションです。
AIを「高速演算ユニット」として指揮下に置き、設計から実装までを極めて短期間で完遂した「自律型開発」の実証モデルでもあります。
<img width="1917" height="990" alt="スクリーンショット 2026-05-09 173320" src="https://github.com/user-attachments/assets/a7adae2f-1944-4aea-9075-d8071378e911" />

### 🛠 技術的特徴
- **Atomic-Centric Architecture**: 
  データベースの物理的な連番IDではなく、原子番号（Atomic Number）を主キー（Logical ID）として扱う設計を採用。データの不整合を排除し、学術的整合性を優先。
- **Turbo-Driven UI (Rails 8/Turbo Frames)**: 
  ページ全体のリロードを介さず、サイドパネルのみを非同期に更新。SPA（Single Page Application）のような滑らかなユーザー体験を提供。
- **CSS Grid Logic**: 
  周期表特有の18列×10行の空間配置を、CSS GridとRubyの動的マッピングによって構築。座標制御をプログラムで完全掌握。

### 🏗 開発思想：自律型技術者としての「自灯明」
本アプリの開発プロセスは、以下の思想に基づいています。
1. **AIとの共進化**: 依存型技術者がAIを恐れるのに対し、自律型はAIを「兵站（ロジスティクス）」として活用し、人間は「戦略的設計」に特化する。
2. **構造の把握**: コードを「点（構文）」ではなく「面（構造）」で捉え、システムのサプライチェーンを最適化する。
3. **軍師的アプローチ**: 最小限のコードで最大の効果（戦果）を挙げる、諸葛孔明のような技術的指揮を執る。

### 📦 導入方法
```bash
git clone [https://github.com/hirof35/periodic-structure-simulator.git](https://github.com/hirof35/periodic-structure-simulator.git)
cd periodic-structure-simulator
bundle install
rails db:migrate
rails db:seed
rails s
🔮 今後の展望
輸送効率シミュレーション（各元素の密度・質量に基づくロジスティクス計算）

地政学的リスク指標の追加（経済・政治レイヤーとの統合）

多次元材料特性の3D可視化

Author: Hirof35

「技術を磨き、思想を研ぎ、構造を変える」
