import { IsNotEmpty, IsString, IsNumber, MaxLength } from 'class-validator';

export class FriendsDto {
	//Data transfer object

	@IsNumber()
	@IsNotEmpty()
	id: number;

	@IsNumber()
	@IsNotEmpty()
	requesterId: number;

	@IsNumber()
	@IsNotEmpty()
	receiverId: number;
}


