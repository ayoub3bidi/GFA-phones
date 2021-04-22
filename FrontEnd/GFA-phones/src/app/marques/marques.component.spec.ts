import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MarquesComponent } from './marques.component';

describe('MarquesComponent', () => {
  let component: MarquesComponent;
  let fixture: ComponentFixture<MarquesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MarquesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MarquesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
