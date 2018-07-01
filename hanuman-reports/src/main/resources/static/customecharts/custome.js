fetch('http://10.1.2.109:8083/pokeit/summary').then((result) => {
     result.json().then(data => {
    passedCount = data[0].passed;
     failedCount = data[0].failed;
     skippedCount = data[0].skipped;
       document.getElementById('summerytotaltests').innerHTML = + data[0].totatTests;
      document.getElementById('summurypassed').innerHTML = + data[0].passed;
        document.getElementById('summerytotalfailed').innerHTML = + data[0].failed;
        document.getElementById('summerytotalskipped').innerHTML = + data[0].skipped;
      });
   }).catch((err) => {
     console.log('Error: ', err);
 });