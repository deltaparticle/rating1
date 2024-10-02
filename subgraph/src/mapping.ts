import { ReviewSubmitted } from '../generated/RatingSystem/RatingSystem';
import { Review } from '../generated/schema';

export function handleReviewSubmitted(event: ReviewSubmitted): void {
  let review = new Review(event.transaction.hash.toHex());
  review.courseId = event.params.courseId;
  review.student = event.params.student;
  review.question1Rating = event.params.question1Rating;
  review.question2Rating = event.params.question2Rating;
  review.question3Rating = event.params.question3Rating;
  review.save();
}

