import React from 'react';
import {StyleSheet, Text, View} from 'react-native';
import SampleView from './SampleView';


export default class RNHighScores extends React.Component {
    render() {
      var contents = this.props['scores'].map((score) => (
        <Text key={score.name}>
          {score.name}:{score.value}
          {'\n'}
        </Text>
      ));
      return (
        <View style={styles.container}>
          <Text style={styles.highScoresTitle}>2048 High Scores!</Text>
          <Text style={styles.scores}>{contents}</Text>
          <SampleView/>
        </View>
      );
    }
  }
  
  const styles = StyleSheet.create({
    container: {
      flex: 1,
      justifyContent: 'center',
      alignItems: 'center',
      backgroundColor: '#FFFFFF',
    },
    highScoresTitle: {
      fontSize: 20,
      textAlign: 'center',
      margin: 10,
    },
    scores: {
      textAlign: 'center',
      color: '#333333',
      marginBottom: 5,
    },
  });
  