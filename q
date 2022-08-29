[33mcommit bf2a822aa322c389a6259a75b50bca54b8abdfcb[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m)[m
Author: lcha0068 <lcha0068@student.monash.edu>
Date:   Mon Aug 29 13:26:46 2022 +1000

    first commit

[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..40b878d[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32mnode_modules/[m
\ No newline at end of file[m
[1mdiff --git a/app.js b/app.js[m
[1mnew file mode 100644[m
[1mindex 0000000..5b3427c[m
[1m--- /dev/null[m
[1m+++ b/app.js[m
[36m@@ -0,0 +1,22 @@[m
[32m+[m[32mconst express = require('express');[m
[32m+[m[32mconst app = express();[m
[32m+[m
[32m+[m[32mconst mongoose = require('mongoose');[m
[32m+[m[32mconst Car = require('./models/car');[m
[32m+[m
[32m+[m[32mconst url = 'mongodb://localhost:27017/week6DB';[m
[32m+[m
[32m+[m[32mmongoose.connect(url, function (err) {[m
[32m+[m[32m    if (err === null) console.log('Connected Successfully');[m
[32m+[m[32m    Car.findByIdAndUpdate('630c2b7f09ae0b99d9684dcd', {maker: "Pros ton", year: 2023}, function(err){[m
[32m+[m[32m        if(err)console.log("Failed to update" + err);[m
[32m+[m[32m    })[m
[32m+[m[32m    //     let car = new Car({ maker: 'BMW', model: 'X6', year: 2021 });[m
[32m+[m[32m    //     car.save(function (err) {[m
[32m+[m[32m    //         if (err) console.log('Unable to save'+err) ;[m
[32m+[m[32m    //         else console.log("Save Successfully");[m
[32m+[m
[32m+[m[32m    //     });[m
[32m+[m[41m    [m
[32m+[m[32m});[m
[32m+[m
[1mdiff --git a/models/car.js b/models/car.js[m
[1mnew file mode 100644[m
[1mindex 0000000..1b338ac[m
[1m--- /dev/null[m
[1m+++ b/models/car.js[m
[36m@@ -0,0 +1,14 @@[m
[32m+[m[32mconst mongoose = require('mongoose');[m
[32m+[m[32mconst carSchema = mongoose.Schema({[m
[32m+[m[32m    _id: {type: mongoose.Schema.Types.ObjectId, auto:true},[m
[32m+[m[32m    maker: {type: String, required: true },[m
[32m+[m[32m    model: {type: String,[m[41m [m
[32m+[m[32m        default: '735'},[m
[32m+[m[32m    year: {type: Number,[m[41m [m
[32m+[m[32m        validate: {validator:function(aYear){[m
[32m+[m[32m            return(aYear>= 1990 && aYear<= 2023)[m
[32m+[m[32m        },[m
[32m+[m[32m    message: 'Invalid Year!!'}[m
[32m+[m[32m}});[m
[32m+[m
[32m+[m[32mmodule.exports = mongoose.model('Car', carSchema);[m
\ No newline at end of file[m
[1mdiff --git a/package-lock.json b/package-lock.json[m
[1mnew file mode 100644[m
[1mindex 0000000..d981fe2[m
[1m--- /dev/null[m
[1m+++ b/package-lock.json[m
[36m@@ -0,0 +1,1588 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "name": "week6",[m
[32m+[m[32m  "version": "1.0.0",[m
[32m+[m[32m  "lockfileVersion": 2,[m
[32m+[m[32m  "requires": true,[m
[32m+[m[32m  "packages": {[m
[32m+[m[32m    "": {[m
[32m+[m[32m      "name": "week6",[m
[32m+[m[32m      "version": "1.0.0",[m
[32m+[m[32m      "license": "ISC",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "express": "^4.18.1",[m
[32m+[m[32m        "mongoose": "^6.5.3"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@types/node": {[m
[32m+[m[32m      "version": "18.7.13",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@types/node/-/node-18.7.13.tgz",[m
[32m+[m[32m      "integrity": "sha512-46yIhxSe5xEaJZXWdIBP7GU4HDTG8/eo0qd9atdiL+lFpA03y8KS+lkTN834TWJj5767GbWv4n/P6efyTFt1Dw=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@types/webidl-conversions": {[m
[32m+[m[32m      "version": "6.1.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@types/webidl-conversions/-/webidl-conversions-6.1.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-XAahCdThVuCFDQLT7R7Pk/vqeObFNL3YqRyFZg+AqAP/W1/w3xHaIxuW7WszQqTbIBOPRcItYJIou3i/mppu3Q=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@types/whatwg-url": {[m
[32m+[m[32m      "version": "8.2.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@types/whatwg-url/-/whatwg-url-8.2.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-FtQu10RWgn3D9U4aazdwIE2yzphmTJREDqNdODHrbrZmmMqI0vMheC/6NE/J1Yveaj8H+ela+YwWTjq5PGmuhA==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@types/node": "*",[m
[32m+[m[32m        "@types/webidl-conversions": "*"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/accepts": {[m
[32m+[m[32m      "version": "1.3.8",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/accepts/-/accepts-1.3.8.tgz",[m
[32m+[m[32m      "integrity": "sha512-PYAthTa2m2VKxuvSD3DPC/Gy+U+sOA1LAuT8mkmRuvw+NACSaeXEQ+NHcVF7rONl6qcaxV3Uuemwawk+7+SJLw==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "mime-types": "~2.1.34",[m
[32m+[m[32m        "negotiator": "0.6.3"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.6"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/array-flatten": {[m
[32m+[m[32m      "version": "1.1.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/array-flatten/-/array-flatten-1.1.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-PCVAQswWemu6UdxsDFFX/+gVeYqKAod3D3UVm91jHwynguOwAvYPhx8nNlM++NqRcK6CxxpUafjmhIdKiHibqg=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/base64-js": {[m
[32m+[m[32m      "version": "1.5.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/base64-js/-/base64-js-1.5.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-AKpaYlHn8t4SVbOHCy+b5+KKgvR4vrsD8vbvrbiQJps7fKDTkjkDry6ji0rUJjC0kzbNePLwzxq8iypo41qeWA==",[m
[32m+[m[32m      "funding": [[m
[32m+[m[32m        {[m
[32m+[m[32m          "type": "github",[m
[32m+[m[32m          "url": "https://github.com/sponsors/feross"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m          "type": "patreon",[m
[32m+[m[32m          "url": "https://www.patreon.com/feross"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m          "type": "consulting",[m
[32m+[m[32m          "url": "https://feross.org/support"[m
[32m+[m[32m        }[m
[32m+[m[32m      ][m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/body-parser": {[m
[32m+[m[32m      "version": "1.20.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/body-parser/-/body-parser-1.20.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-DfJ+q6EPcGKZD1QWUjSpqp+Q7bDQTsQIF4zfUAtZ6qk+H/3/QRhg9CEp39ss+/T2vw0+HaidC0ecJj/DRLIaKg==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "bytes": "3.1.2",[m
[32m+[m[32m        "content-type": "~1.0.4",[m
[32m+[m[32m        "debug": "2.6.9",[m
[32m+[m[32m        "depd": "2.0.0",[m
[32m+[m[32m        "destroy": "1.2.0",[m
[32m+[m[32m        "http-errors": "2.0.0",[m
[32m+[m[32m        "iconv-lite": "0.4.24",[m
[32m+[m[32m        "on-finished": "2.4.1",[m
[32m+[m[32m        "qs": "6.10.3",[m
[32m+[m[32m        "raw-body": "2.5.1",[m
[32m+[m[32m        "type-is": "~1.6.18",[m
[32m+[m[32m        "unpipe": "1.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.8",[m
[32m+[m[32m        "npm": "1.2.8000 || >= 1.4.16"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/body-parser/node_modules/debug": {[m
[32m+[m[32m      "version": "2.6.9",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/debug/-/debug-2.6.9.tgz",[m
[32m+[m[32m      "integrity": "sha512-bC7ElrdJaJnPbAP+1EotYvqZsb3ecl5wi6Bfi6BJTUcNowp6cvspg0jXznRTKDjm/E7AdgFBVeAPVMNcKGsHMA==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "ms": "2.0.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/body-parser/node_modules/ms": {[m
[32m+[m[32m      "version": "2.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/ms/-/ms-2.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-Tpp60P6IUJDTuOq/5Z8cdskzJujfwqfOTkrwIwj7IRISpnkJnT6SyJ4PCPnGMoFjC9ddhal5KVIYtAt97ix05A=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/bson": {[m
[32m+[m[32m      "version": "4.7.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/bson/-/bson-4.7.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-VrlEE4vuiO1WTpfof4VmaVolCVYkYTgB9iWgYNOrVlnifpME/06fhFRmONgBhClD5pFC1t9ZWqFUQEQAzY43bA==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "buffer": "^5.6.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=6.9.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/buffer": {[m
[32m+[m[32m      "version": "5.7.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/buffer/-/buffer-5.7.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-EHcyIPBQ4BSGlvjB16k5KgAJ27CIsHY/2JBmCRReo48y9rQ3MaUzWX3KVlBa4U7MyX02HdVj0K7C3WaB3ju7FQ==",[m
[32m+[m[32m      "funding": [[m
[32m+[m[32m        {[m
[32m+[m[32m          "type": "github",[m
[32m+[m[32m          "url": "https://github.com/sponsors/feross"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m          "type": "patreon",[m
[32m+[m[32m          "url": "https://www.patreon.com/feross"[m
[32m+[m[32m        },[m
[32m+[m[32m        {[m
[32m+[m[32m          "type": "consulting",[m
[32m+[m[32m          "url": "https://feross.org/support"[m
[32m+[m[32m        }[m
[32m+[m[32m      ],[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "base64-js": "^1.3.1",[m
[32m+[m[32m        "ieee754": "^1.1.13"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/bytes": {[m
[32m+[m[32m      "version": "3.1.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/bytes/-/bytes-3.1.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-/Nf7TyzTx6S3yRJObOAV7956r8cr2+Oj8AC5dt8wSP3BQAoeX58NoHyCU8P8zGkNXStjTSi6fzO6F0pBdcYbEg==",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/call-bind": {[m
[32m+[m[32m      "version": "1.0.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/call-bind/-/call-bind-1.0.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-7O+FbCihrB5WGbFYesctwmTKae6rOiIzmz1icreWJ+0aA7LJfuqhEso2T9ncpcFtzMQtzXf2QGGueWJGTYsqrA==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "function-bind": "^1.1.1",[m
[32m+[m[32m        "get-intrinsic": "^1.0.2"[m
[32m+[m[32m      },[m
[32m+[m[32m      "funding": {[m
[32m+[m[32m        "url": "https://github.com/sponsors/ljharb"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/content-disposition": {[m
[32m+[m[32m      "version": "0.5.4",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/content-disposition/-/content-disposition-0.5.4.tgz",[m
[32m+[m[32m      "integrity": "sha512-FveZTNuGw04cxlAiWbzi6zTAL/lhehaWbTtgluJh4/E95DqMwTmha3KZN1aAWA8cFIhHzMZUvLevkw5Rqk+tSQ==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "safe-buffer": "5.2.1"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.6"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/content-type": {[m
[32m+[m[32m      "version": "1.0.4",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/content-type/-/content-type-1.0.4.tgz",[m
[32m+[m[32m      "integrity": "sha512-hIP3EEPs8tB9AT1L+NUqtwOAps4mk2Zob89MWXMHjHWg9milF/j4osnnQLXBCBFBk/tvIG/tUc9mOUJiPBhPXA==",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.6"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/cookie": {[m
[32m+[m[32m      "version": "0.5.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/cookie/-/cookie-0.5.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-YZ3GUyn/o8gfKJlnlX7g7xq4gyO6OSuhGPKaaGssGB2qgDUS0gPgtTvoyZLTt9Ab6dC4hfc9dV5arkvc/OCmrw==",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.6"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/cookie-signature": {[m
[32m+[m[32m      "version": "1.0.6",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/cookie-signature/-/cookie-signature-1.0.6.tgz",[m
[32m+[m[32m      "integrity": "sha512-QADzlaHc8icV8I7vbaJXJwod9HWYp8uCqf1xa4OfNu1T7JVxQIrUgOWtHdNDtPiywmFbiS12VjotIXLrKM3orQ=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/debug": {[m
[32m+[m[32m      "version": "4.3.4",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/debug/-/debug-4.3.4.tgz",[m
[32m+[m[32m      "integrity": "sha512-PRWFHuSU3eDtQJPvnNY7Jcket1j0t5OuOsFzPPzsekD52Zl8qUfFIPEiswXqIvHWGVHOgX+7G/vCNNhehwxfkQ==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "ms": "2.1.2"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=6.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "peerDependenciesMeta": {[m
[32m+[m[32m        "supports-color": {[m
[32m+[m[32m          "optional": true[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/debug/node_modules/ms": {[m
[32m+[m[32m      "version": "2.1.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/denque": {[m
[32m+[m[32m      "version": "2.1.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/denque/-/denque-2.1.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-HVQE3AAb/pxF8fQAoiqpvg9i3evqug3hoiwakOyZAwJm+6vZehbkYXZ0l4JxS+I3QxM97v5aaRNhj8v5oBhekw==",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=0.10"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/depd": {[m
[32m+[m[32m      "version": "2.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/depd/-/depd-2.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-g7nH6P6dyDioJogAAGprGpCtVImJhpPk/roCzdb3fIh61/s/nPsfR6onyMwkCAR/OlC3yBC0lESvUoQEAssIrw==",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/destroy": {[m
[32m+[m[32m      "version": "1.2.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/destroy/-/destroy-1.2.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-2sJGJTaXIIaR1w4iJSNoN0hnMY7Gpc/n8D4qSCJw8QqFWXf7cuAgnEHxBpweaVcPevC2l3KpjYCx3NypQQgaJg==",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.8",[m
[32m+[m[32m        "npm": "1.2.8000 || >= 1.4.16"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/ee-first": {[m
[32m+[m[32m      "version": "1.1.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-WMwm9LhRUo+WUaRN+vRuETqG89IgZphVSNkdFgeb6sS/E4OrDIN7t48CAewSHXc6C8lefD8KKfr5vY61brQlow=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/encodeurl": {[m
[32m+[m[32m      "version": "1.0.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/encodeurl/-/encodeurl-1.0.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-TPJXq8JqFaVYm2CWmPvnP2Iyo4ZSM7/QKcSmuMLDObfpH5fi7RUGmd/rTDf+rut/saiDiQEeVTNgAmJEdAOx0w==",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.8"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/escape-html": {[m
[32m+[m[32m      "version": "1.0.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/escape-html/-/escape-html-1.0.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-NiSupZ4OeuGwr68lGIeym/ksIZMJodUGOSCZ/FSnTxcrekbvqrgdUxlJOMpijaKZVjAJrWrGs/6Jy8OMuyj9ow=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/etag": {[m
[32m+[m[32m      "version": "1.8.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/etag/-/etag-1.8.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-aIL5Fx7mawVa300al2BnEE4iNvo1qETxLrPI/o05L7z6go7fCw1J6EQmbK4FmJ2AS7kgVF/KEZWufBfdClMcPg==",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.6"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/express": {[m
[32m+[m[32m      "version": "4.18.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/express/-/express-4.18.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-zZBcOX9TfehHQhtupq57OF8lFZ3UZi08Y97dwFCkD8p9d/d2Y3M+ykKcwaMDEL+4qyUolgBDX6AblpR3fL212Q==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "accepts": "~1.3.8",[m
[32m+[m[32m        "array-flatten": "1.1.1",[m
[32m+[m[32m        "body-parser": "1.20.0",[m
[32m+[m[32m        "content-disposition": "0.5.4",[m
[32m+[m[32m        "content-type": "~1.0.4",[m
[32m+[m[32m        "cookie": "0.5.0",[m
[32m+[m[32m        "cookie-signature": "1.0.6",[m
[32m+[m[32m        "debug": "2.6.9",[m
[32m+[m[32m        "depd": "2.0.0",[m
[32m+[m[32m        "encodeurl": "~1.0.2",[m
[32m+[m[32m        "escape-html": "~1.0.3",[m
[32m+[m[32m        "etag": "~1.8.1",[m
[32m+[m[32m        "finalhandler": "1.2.0",[m
[32m+[m[32m        "fresh": "0.5.2",[m
[32m+[m[32m        "http-errors": "2.0.0",[m
[32m+[m[32m        "merge-descriptors": "1.0.1",[m
[32m+[m[32m        "methods": "~1.1.2",[m
[32m+[m[32m        "on-finished": "2.4.1",[m
[32m+[m[32m        "parseurl": "~1.3.3",[m
[32m+[m[32m        "path-to-regexp": "0.1.7",[m
[32m+[m[32m        "proxy-addr": "~2.0.7",[m
[32m+[m[32m        "qs": "6.10.3",[m
[32m+[m[32m        "range-parser": "~1.2.1",[m
[32m+[m[32m        "safe-buffer": "5.2.1",[m
[32m+[m[32m        "send": "0.18.0",[m
[32m+[m[32m        "serve-static": "1.15.0",[m
[32m+[m[32m        "setprototypeof": "1.2.0",[m
[32m+[m[32m        "statuses": "2.0.1",[m
[32m+[m[32m        "type-is": "~1.6.18",[m
[32m+[m[32m        "utils-merge": "1.0.1",[m
[32m+[m[32m        "vary": "~1.1.2"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">= 0.10.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/express/node_modules/debug": {[m
[32m+[m[32m      "version": "2.6.9",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/debug/-/debug-2.6.9.tgz",[m
[32m+[m[32m      "integrity": "sha512-bC7ElrdJaJnPbAP+1EotYvqZsb3ecl5wi6Bfi6BJTUcNowp6cvspg0jXznRTKDjm/E7AdgFBVeAPVMNcKGsHMA==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "ms": "2.0.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/express/node_modules/ms": {[m
[32m+[m[32m      "version": "2.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/ms/-/ms-2.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-Tpp60P6IUJDTuOq/5Z8cdskzJujfwqfOTkrwIwj7IRISpnkJnT6SyJ4PCPnGMoFjC9ddhal5KVIYtAt97ix05A=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/finalhandler": {[m
[32m+[m[32m      "version": "1.2.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/finalhandler/-/finalhandler-1.2.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-5uXcUVftlQMFnWC9qu/svkWv3GTd2PfUhK/3PLkYNAe7FbqJMt3515HaxE6eRL74GdsriiwujiawdaB1BpEISg==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "debug": "2.6.9",[m
[32m+[m[32m        "encodeurl": "~1.0.2",[m
[32m+[m[32m        "escape-html": "~1.0.3",[m
[32m+[m[32m        "on-finished": "2.4.1",[m
[32m+[m[32m        "parseurl": "~1.3.3",[m
[32m+[m[32m        "stat