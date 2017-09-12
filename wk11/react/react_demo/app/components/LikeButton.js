import React from 'react'

export default function LikeButton(props) {
  return <div onClick={props.ClickHandler}          class="like-button">
    Likes {props.count}
  </div>
}
