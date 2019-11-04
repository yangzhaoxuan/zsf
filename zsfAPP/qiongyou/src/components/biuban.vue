<template>
    <div class="biuban">
        <div class="nav">
            <div class="logo">
                <img src="../assets/img/logo.png" alt="" @click="go_back">
            </div>
            <div class="biu">
                <em>Biu伴！</em>
            </div>
            <div>重置</div>
        </div>
        <div class="top">
            <ul>
                <li @click="didianshow">地点</li>
                <li>主题</li>
                <li>时间</li>
            </ul>
        </div>
        <hr>
        <div class="main">
            <ul>
                <li>
                    <router-link to="">
                        <img src="../assets/img/biuban/bg1.jpg" alt="">
                        <div>
                            <span>一起去旅行</span>
                            <div>
                                <img src="../assets/img/biuban/tx1.jpg" alt="">
                            </div>
                            <span>冰岛</span>
                            <p>2020年1月13日到2月5日去埃及和约旦，本人女汉子，无公主病不矫情，不奢侈不</p>
                        </div>
                    </router-link>
                </li>
                <li>
                    <router-link to="">
                        <img src="../assets/img/biuban/bg1.jpg" alt="">
                        <div>
                            <span>一起去旅行</span>
                            <div>
                                <img src="../assets/img/biuban/tx1.jpg" alt="">
                            </div>
                            <span>冰岛</span>
                            <p>2020年1月13日到2月5日去埃及和约旦，本人女汉子，无公主病不矫情，不奢侈不</p>
                        </div>
                    </router-link>
                </li>
                <li>
                    <router-link to="">
                        <img src="../assets/img/biuban/bg1.jpg" alt="">
                        <div>
                            <span>一起去旅行</span>
                            <div>
                                <img src="../assets/img/biuban/tx1.jpg" alt="">
                            </div>
                            <span>冰岛</span>
                            <p>2020年1月13日到2月5日去埃及和约旦，本人女汉子，无公主病不矫情，不奢侈不</p>
                        </div>
                    </router-link>
                </li>
                <li>
                    <router-link to="">
                        <img src="../assets/img/biuban/bg1.jpg" alt="">
                        <div>
                            <span>一起去旅行</span>
                            <div>
                                <img src="../assets/img/biuban/tx1.jpg" alt="">
                            </div>
                            <span>冰岛</span>
                            <p>2020年1月13日到2月5日去埃及和约旦，本人女汉子，无公主病不矫情，不奢侈不</p>
                        </div>
                    </router-link>
                </li>
                <li>
                    <router-link to="">
                        <img src="../assets/img/biuban/bg1.jpg" alt="">
                        <div>
                            <span>一起去旅行</span>
                            <div>
                                <img src="../assets/img/biuban/tx1.jpg" alt="">
                            </div>
                            <span>冰岛</span>
                            <p>2020年1月13日到2月5日去埃及和约旦，本人女汉子，无公主病不矫情，不奢侈不</p>
                        </div>
                    </router-link>
                </li>
                <li>
                    <router-link to="">
                        <img src="../assets/img/biuban/bg1.jpg" alt="">
                        <div>
                            <span>一起去旅行</span>
                            <div>
                                <img src="../assets/img/biuban/tx1.jpg" alt="">
                            </div>
                            <span>冰岛</span>
                            <p>2020年1月13日到2月5日去埃及和约旦，本人女汉子，无公主病不矫情，不奢侈不</p>
                        </div>
                    </router-link>
                </li>
                <li>
                    <router-link to="">
                        <img src="../assets/img/biuban/bg1.jpg" alt="">
                        <div>
                            <span>一起去旅行</span>
                            <div>
                                <img src="../assets/img/biuban/tx1.jpg" alt="">
                            </div>
                            <span>冰岛</span>
                            <p>2020年1月13日到2月5日去埃及和约旦，本人女汉子，无公主病不矫情，不奢侈不</p>
                        </div>
                    </router-link>
                </li>
                <li>
                    <router-link to="">
                        <img src="../assets/img/biuban/bg1.jpg" alt="">
                        <div>
                            <span>一起去旅行</span>
                            <div>
                                <img src="../assets/img/biuban/tx1.jpg" alt="">
                            </div>
                            <span>冰岛</span>
                            <p>2020年1月13日到2月5日去埃及和约旦，本人女汉子，无公主病不矫情，不奢侈不</p>
                        </div>
                    </router-link>
                </li>
                <li>
                    <router-link to="">
                        <img src="../assets/img/biuban/bg1.jpg" alt="">
                        <div>
                            <span>一起去旅行</span>
                            <div>
                                <img src="../assets/img/biuban/tx1.jpg" alt="">
                            </div>
                            <span>冰岛</span>
                            <p>2020年1月13日到2月5日去埃及和约旦，本人女汉子，无公主病不矫情，不奢侈不</p>
                        </div>
                    </router-link>
                </li>
            </ul>
        </div>
        <div class="didian">
            <div class="search">
                <div>
                    <div>
                        <img src="../assets/img/biuban/sousuo.png" alt="">
                    </div>
                    <input type="text">
                </div>
                <span @click="didianhiden">取消</span>
            </div>
            <div class="remendidian">
                <ul>
                    <li>
                        <span>台湾</span>
                    </li>
                    <li>
                        <span>香港</span>
                    </li>
                    <li>
                        <span>东京</span>
                    </li>
                    <li>
                        <span>京都</span>
                    </li>
                    <li>
                        <span>京都</span>
                    </li>
                    <li>
                        <span>京都</span>
                    </li>
                    <li>
                        <span>京都</span>
                    </li>
                    <li>
                        <span>京都</span>
                    </li>
                    <li>
                        <span>台湾</span>
                    </li>
                    <li>
                        <span>香港</span>
                    </li>
                    <li>
                        <span>东京</span>
                    </li>
                    <li>
                        <span>京都</span>
                    </li>
                    <li>
                        <span>台湾</span>
                    </li>
                    <li>
                        <span>香港</span>
                    </li>
                    <li>
                        <span>东京</span>
                    </li>
                    <li>
                        <span>京都</span>
                    </li>
                    <li>
                        <span>台湾</span>
                    </li>
                    <li>
                        <span>香港</span>
                    </li>
                    <li>
                        <span>东京</span>
                    </li>
                    <li>
                        <span>京都</span>
                    </li>
                    <li>
                        <span>台湾</span>
                    </li>
                    <li>
                        <span>香港</span>
                    </li>
                    <li>
                        <span>东京</span>
                    </li>
                    <li>
                        <span>京都</span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="fabu">
            <div>
                <img src="../assets/img/biuban/biuban.jpg" alt="">
            </div>
            <div>
                <span>发布</span>
                <span><em>Biu伴！</em></span>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods: {
        didianhiden(){
            var div=document.querySelector('.didian');
              div.style.display="none";
        },
        didianshow(){
            var div=document.querySelector('.didian');
            div.style.display="block";
        },
        go_back(){
            this.$router.go(-1);
        }
    },
}
</script>
<style scoped>
.biuban{
    padding: 0.25rem;
}
.nav{
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.nav>div{
    width: 20%;
}
.logo>img{
    width: 75%;
    border-radius: 5px;
}
.nav>.biu>em{
    font-weight: 1000;
    font-size: 1rem;
}
.nav>div:last-child{
    border: 1px solid #ccc;
    text-align: center;
    border-radius: 0.95rem;
    font-size: 0.85rem;
    padding: 0.15rem;
}
.top>ul{
    display: flex;
    justify-content: space-around;
    align-items: center;
    padding: 0.5rem 0;
}
.top>ul>li{
    font-weight: 700;
}
.top>ul>li::after{
    content: "";
    display: inline-block;
    border-top: 0.25rem #000 solid;
}
.main>ul{
    display: flex;
    justify-content: space-between;
    flex-flow: wrap;
}
.main>ul>li{
    width: 46.5%;
    border-radius: 1rem;
    overflow: hidden;
    margin: 0.25rem;
}
.main>ul>li>a{
    display: block;
    width: 100%;
    position: relative;
}
.main>ul>li>a>img{
    width: 100%;
}
.main>ul>li>a>div{
    position: absolute;
    top: 0;
    left: 0;
    color: #fff;
    text-align: center;
}
.main>ul>li>a>div>div{
    width: 30%;
    margin-left: 35%;
    text-align: center;
    border-radius: 50%;
    overflow: hidden;
}
.main>ul>li>a>div>span{
    background: #fff;
    border-radius: 1.5rem;
    color:#000;
    font-size: 0.85rem;
    display: inline-block;    
    padding: 0.25rem 0.75rem;
    margin: 0.35rem 0;
}
.main>ul>li>a>div>div>img{
    width: 100%;
}
.main>ul>li>a>div>p{
    text-align: left;
    font-size: 0.75rem;
    padding: 0.25rem 0;
    text-indent: 1.5rem;
    margin-top: 0.75rem;
}
.fabu{
    position: fixed;
    display: flex;
    align-items: center;
    left: 50%;
    background:linear-gradient(90deg, rgb(255, 126, 50), rgb(255, 0, 163));
    border-radius: 3rem;
    padding: 0.25rem;
    font-weight: 700;
    color: #fff;
    margin-left: -22%;
    bottom: 2rem;
}
.fabu span{
    padding:0 0.1rem;
}
.didian{
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(255, 255,255, 1);
    display: none;
}
.didian>.search{
    padding: 0 0.25rem;
    margin-top: 0.5rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
    text-align: center;
}
.didian>.search>span{
    padding: 0 1rem;
}
.didian>.search>div:first-child{
    display: flex;
    align-items: center;
    width: 80%;
    justify-content: center;
    border: 1px solid #ccc;
    border-radius: 1.5rem;
}
.didian>.search>div:first-child>input{
    outline: none;
    border-width: 0;
    width: 90%;
    height: 100%;
}
.remendidian>ul{
    display: flex;
    flex-flow: wrap;
    justify-content: space-between;
    text-align: center;
}
.remendidian>ul>li{
    width: 24%;
    margin-top: 0.5rem;
}
</style>