describe "Legislator Model", ->
	it "should exsist", ->
		expect(GetLeg.Models.Legislator).toBeDefined()
	describe "Attributes", ->
		brown = new GetLeg.Models.Legislator
		it "should have default attributes", ->
			expect(brown.attributes.first_name).toBeDefined()
			expect(brown.attributes.last_name).toBeDefined()
			expect(brown.attributes.email).toBeDefined()
			expect(brown.attributes.photo_url).toBeDefined()
	describe "Legislator Collection", ->
		legislators = new GetLeg.Collections.LegislatorsCollection
		legislators_data =
          [
            {
            "last_name": "Dabakis",
            "updated_at": "2013-02-06 01:35:03",
            "sources": [
              {
              "url": "http://www.utahsenate.org/aspx/roster.aspx"
              },
              {
              "url": "http://www.utahsenate.org/aspx/senmember.aspx?dist=2"
              }
            ],
            "full_name": "Jim Dabakis",
            "id": "UTL000115",
            "first_name": "Jim",
            "middle_name": "",
            "district": "2",
            "state": "ut",
            "boundary_id": "sldu/ut-2",
            "email": "jdabakis@le.utah.gov",
            "leg_id": "UTL000115",
            "party": "Democratic",
            "active": true,
            "transparencydata_id": "",
            "nickname": "",
            "photo_url": "http://www.utahsenate.org/images/member-photos/DABAKJ.jpg",
            "roles": [
              {
              "term": "2013-2014",
              "end_date": null,
              "district": "2",
              "chamber": "upper",
              "state": "ut",
              "party": "Democratic",
              "type": "member",
              "start_date": null
              },
              {
              "term": "2013-2014",
              "committee_id": "UTC000007",
              "chamber": "upper",
              "state": "ut",
              "subcommittee": null,
              "committee": "Natural Resources, Agriculture, and Environment Committee",
              "position": "member",
              "type": "committee member"
              },
              {
              "term": "2013-2014",
              "committee_id": "UTC000009",
              "chamber": "upper",
              "state": "ut",
              "subcommittee": null,
              "committee": "Revenue and Taxation Committee",
              "position": "member",
              "type": "committee member"
              }
            ],
            "url": "http://www.utahsenate.org/aspx/senmember.aspx?dist=2",
            "created_at": "2013-01-11 00:17:25",
            "chamber": "upper",
            "offices": [
              {
              "fax": null,
              "name": "Home",
              "phone": "801-656-8269",
              "address": "54 B STREET SALT LAKE CITY, UT 84103",
              "type": "district",
              "email": null
              }
            ],
            "+address": "54 B STREET SALT LAKE CITY, UT 84103",
            "suffixes": ""
            },
            {
            "last_name": "Chavez-Houck",
            "updated_at": "2013-02-06 01:35:04",
            "sources": [
              {
              "url": "http://le.utah.gov/house2/representatives.jsp"
              },
              {
              "url": "http://le.utah.gov/house2/detail.jsp?i=CHAVER"
              }
            ],
            "full_name": "Rebecca Chavez-Houck",
            "old_roles": {
            "2011-2012": [
              {
              "term": "2011-2012",
              "end_date": null,
              "district": "24",
              "chamber": "lower",
              "state": "ut",
              "party": "Democratic",
              "type": "member",
              "start_date": null
              },
              {
              "term": "2011-2012",
              "committee_id": "UTC000015",
              "chamber": "lower",
              "state": "ut",
              "subcommittee": null,
              "committee": "Ethics Committee",
              "position": "Co Chair",
              "type": "committee member"
              },
              {
              "term": "2011-2012",
              "committee_id": "UTC000016",
              "chamber": "lower",
              "state": "ut",
              "subcommittee": null,
              "committee": "Government Operations Committee",
              "position": "member",
              "type": "committee member"
              },
              {
              "term": "2011-2012",
              "committee_id": "UTC000017",
              "chamber": "lower",
              "state": "ut",
              "subcommittee": null,
              "committee": "Health and Human Services Committee",
              "position": "member",
              "type": "committee member"
              }
            ]
            },
            "id": "UTL000039",
            "first_name": "Rebecca",
            "middle_name": "",
            "district": "24",
            "state": "ut",
            "votesmart_id": "102393",
            "boundary_id": "sldl/ut-24",
            "email": "rchouck@le.utah.gov",
            "leg_id": "UTL000039",
            "party": "Democratic",
            "active": true,
            "transparencydata_id": "5f369839b6384366b2249f8be5824f48",
            "photo_url": "http://le.utah.gov/images/legislator/chaver.jpg",
            "roles": [
              {
              "term": "2013-2014",
              "end_date": null,
              "district": "24",
              "chamber": "lower",
              "state": "ut",
              "party": "Democratic",
              "type": "member",
              "start_date": null
              },
              {
              "term": "2013-2014",
              "committee_id": "UTC000015",
              "chamber": "lower",
              "state": "ut",
              "subcommittee": null,
              "committee": "Ethics Committee",
              "position": "Co Chair",
              "type": "committee member"
              },
              {
              "term": "2013-2014",
              "committee_id": "UTC000016",
              "chamber": "lower",
              "state": "ut",
              "subcommittee": null,
              "committee": "Government Operations Committee",
              "position": "member",
              "type": "committee member"
              },
              {
              "term": "2013-2014",
              "committee_id": "UTC000017",
              "chamber": "lower",
              "state": "ut",
              "subcommittee": null,
              "committee": "Health and Human Services Committee",
              "position": "member",
              "type": "committee member"
              }
            ],
            "url": "http://le.utah.gov/house2/detail.jsp?i=CHAVER",
            "country": "us",
            "created_at": "2011-01-14 22:24:08",
            "level": "state",
            "chamber": "lower",
            "offices": [
              {
              "fax": null,
              "name": "Home",
              "phone": "801-891-9292",
              "address": "643 16TH AVE SALT LAKE CITY, UT 84103",
              "type": "district",
              "email": null
              }
            ],
            "suffixes": ""
            }
          ];
		it "should exsist", ->
			expect(GetLeg.Collections.LegislatorsCollection).toBeDefined()
		it "should use the Legislator Model", ->
			expect(legislators.model).toEqual GetLeg.Models.Legislator
		# it "should fail", ->
		# 	legislators.add(legislators_data)