import React from 'react'
import Slider from './Slider'
import TweetBox from './TweetBox'
import HelloWorld from './helloworld'
import LikeButton from './LikeButton'
import PasswordInput from './PasswordInput'
import MultiThemeProvidor from './'


export default class App extends React.component {

  constructor(props) {
    super(props)
    this.state = {
      likesCount: 0
    }
    onLikeButtonClick() {
      console.log('clicking like button')
    }
  }

  render() {
    return <div>
      <h1>react components demo</h1>
      <LikeButton
      clickHandler={}
      count={this.state.likesCount} />
    </div>
  }
}
