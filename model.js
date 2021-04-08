const tf = require('@tensorflow/tfjs-node');
const movies = require("./data/web_data.json");
const movieIds = require("./data/movieId.json");

class L2 {
    static className = 'L2';
    constructor(config) {
       return tf.regularizers.l1l2(config)
    }
}
tf.serialization.registerClass(L2);

async function loadModel() {
    model = await tf.loadLayersModel("file://model/model.json");
    // model.summary();
}

const movieLength = movieIds.length;
const inputArr = tf.range(0, movieLength);

exports.recommend = async function recommend(userId) {
    let user = tf.fill([movieLength], Number(userId));
    await loadModel();
    predTensor = await model.predict([user, inputArr]);
    predTensor = predTensor.reshape([-1]);

    const recommendations = tf.topk(predTensor, 120, sorted=true);

    const predRatings = recommendations.values.arraySync();
    const predIndices = recommendations.indices;
    const predIds = tf.gather(movieIds, predIndices).arraySync();

    let recommendationsArr = [];
    predIds.forEach(function(id){
        const index = movies.findIndex(item => item.movieId === id);
        recommendationsArr.push(movies[index]);
    })

    recommendationsArr.forEach(function(i){
        //  i.genres = i.genres.split("|");
         i.year = i.title.slice(-5, -1);
        });

    return [recommendationsArr, predRatings];
}