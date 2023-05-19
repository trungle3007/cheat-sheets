interface Workable {
  work(): void;
}

interface Breakable {
  takeBreak(): void;
}

interface Attendable {
  attendMeeting(): void;
}

class Developer implements Workable, Breakable {
  work(): void {
    console.log("Writing code");
  }

  takeBreak(): void {
    console.log("Taking a short break");
  }
}

class Manager implements Workable, Attendable {
  work(): void {
    console.log("Managing the team");
  }

  attendMeeting(): void {
    console.log("Attending management meeting");
  }
}
