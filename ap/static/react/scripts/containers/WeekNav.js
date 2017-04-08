import { connect } from 'react-redux'
import { nextWeek, prevWeek, prevPeriod, nextPeriod } from '../actions'
import { getDateDetails } from '../selectors/selectors'
import WeekBar from '../components/WeekBar'

const mapStateToProps = (state) => {
  let details = getDateDetails(state)
  details.traineeView = state.form.traineeView
  return details
}

const mapDispatchToProps = (dispatch) => {
  return {
    onPrevWeek: () => {
      dispatch(prevWeek())
    },
    onNextWeek: () => {
      dispatch(nextWeek())
    },
    onPrevPeriod: () => {
      dispatch(prevPeriod())
    },
    onNextPeriod: () => {
      dispatch(nextPeriod())
    }
  }
}

const WeekNav = connect(
  mapStateToProps,
  mapDispatchToProps
)(WeekBar)

export default WeekNav
