< script xmlns = ""
id = "TestInsertScript_shk" >
  try {
    (function OverrideDefaultFunction_debug(a, b, c, d, eventPre) {
      console.log("this page OverrideDefaultFunction_debug");

      function showNotification() {
        const evt = new CustomEvent(eventPre + "_shk_showNote", {
          'detail': {}
        });
        window.dispatchEvent(evt);
      }

      function overrideCanvasProto(root) {
        function overrideCanvasInternal(name, old) {
          root.prototype['shk_' + name] = old;
          Object.defineProperty(root.prototype, name, {
            value: function () {
              var width = this.width;
              var height = this.height;
              var content = this.getContext("2d");
              var imageData = content.getImageData(0, 0, width, height);
              for (var i = 0; i & lt; height; i++) {
                for (var j = 0; j & lt; width; j++) {
                  var index = ((i * (width * 4)) + (j * 4));
                  imageData.data[index] = imageData.data[index] + a;
                  imageData.data[index + 1] = imageData.data[index + 1] + b;
                  imageData.data[index + 2] = imageData.data[index + 2] + c;
                  imageData.data[index + 3] = imageData.data[index + 3] + d;
                }
              }
              content.putImageData(imageData, 0, 0);
              console.log("Finger print has block the track,the call is: " + name);
              showNotification();
              return old.apply(this, arguments);
            }
          });
        }
        overrideCanvasInternal("toDataURL", root.prototype.toDataURL);
        overrideCanvasInternal("toBlob", root.prototype.toBlob);
      }
      overrideCanvasProto(HTMLCanvasElement);

      function overrideRenderingFunction(root) {
        const name = "getImageData";
        const getImageData = root.prototype.getImageData;
        root.prototype['shk_' + name] = getImageData;
        Object.defineProperty(root.prototype, name, {
          value: function () {
            var imageData = getImageData.apply(this, arguments);
            var height = imageData.height;
            var width = imageData.width;
            for (var i = 0; i & lt; height; i++) {
              for (var j = 0; j & lt; width; j++) {
                var index = ((i * (width * 4)) + (j * 4));
                imageData.data[index] = imageData.data[index] + a;
                imageData.data[index + 1] = imageData.data[index + 1] + b;
                imageData.data[index + 2] = imageData.data[index + 2] + c;
                imageData.data[index + 3] = imageData.data[index + 3] + d;
              }
            }
            console.log("has block the finger print,the call is :" + name);
            showNotification();
            return imageData;
          }
        });
      }
      overrideRenderingFunction(CanvasRenderingContext2D);
      var scriptNode = document.getElementById('TestInsertScript_shk');
      scriptNode.parentNode.removeChild(scriptNode);
    })(14, 3, 28, 14, "awmik");
  } catch (e) {
    console.log(e)
  } < /script>