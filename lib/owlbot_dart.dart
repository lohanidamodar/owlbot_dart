library owlbot_dart;

import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'src/owlbot.dart';
part 'src/owlbot_res.dart';
part 'src/owlbot_definition.dart';
/* function Owlbot(token) {
    if (!token) {
      throw "Token is not provided. if you don't have a token, you can get one at https://owlbot.info.";
    }
    return {
        client: axios.create({
            baseURL: 'https://owlbot.info',
            timeout: 5000,
            headers: {'Authorization': 'Token '+token}
        }),
        data: null,
        define: async function(word) {
            if(!word){
                throw 'Word is not provided.';
            }
            var self = this;
            await this.client.get('/api/v4/dictionary/'+word).then(function (response) {
                self.data = response.data;
            }).catch(function(error){
                throw error;
            });
            return self.data;
        }
    }
}

module.exports = Owlbot; */
