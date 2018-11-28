import React from 'react';
import {requireNativeComponent, StyleSheet} from 'react-native';
import PropTypes from 'prop-types';
//module.exports = requireNativeComponent('SampleViewSwift', null);

const SampleViewNative = requireNativeComponent('SampleViewSwift', SampleView);

class SampleView extends React.Component {
    render() {
        return <SampleViewNative />
    }
}
// SampleView.PropTypes = {
//     // 如果SampleView带有一些参数，可以在这里进行说明
// }
export default SampleView;
