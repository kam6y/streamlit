import streamlit as st
import time

st.title("Streamlit 超入門")

st.write("プログレスバーの表示")
"Stert!"

latest_iteration = st.empty()
bar = st.progress(0)

for i in range(100):
    latest_iteration.text(f"Iteration {i+1}")
    bar.progress(i + 1)
    time.sleep(0.02)

"Done"

left_column, right_column = st.columns(2)
button = left_column.button("右カラムに文字を表示")
if button:
    right_column.write("右からむ")

expander1 = st.expander("問い合わせ1")
expander1.write("問い合わせ内容を書く")
expander2 = st.expander("問い合わせ2")
expander2.write("問い合わせ内容を書く")
expander3 = st.expander("問い合わせ3")
expander3.write("問い合わせ内容を書く")

answer = st.text_input("あなたの趣味を教えて下さい")
"あなたの趣味：", answer

condition = st.slider("あなたの調子はどう？",0,100,50)
"コンディション：",condition

#if st.checkbox("show Image"):
#    img = Image.open("/Users/goodapple/Pictures/スクリーンショット 2023-05-29 14.30.16.png")
#    st.image(img, caption="test",use_column_width=True)

